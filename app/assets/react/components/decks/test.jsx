import React, { useState, useEffect } from 'react';
import { Link, useParams } from 'react-router-dom';
import { getOne as getDeck, put as updateDeck } from '../../services/deck';
import { post as postDeckCard, put as updateDeckCard, getOne as getDeckCardById } from '../../services/deckCard';
import { getAllHero, getAllOtherThanHeroWithFaction, getOne as getCardById } from '../../services/card';

export default function Edit({ user }) {
    let { deckId } = useParams();
    const [deck, setDeck] = useState(null);
    const [selectedHeroId, setSelectedHeroId] = useState(null);
    const [msgErrorDeck, setMsgErrorDeck] = useState(null);
    const [msgSuccessDeck, setMsgSuccessDeck] = useState(null);
    const [cardsDeck, setCardsDeck] = useState([]);
    const [cards, setCards] = useState([]); // This initializes cards state
    const [cardFac, setCardsF] = useState(null);
    const [formData, setFormData] = useState(null);

    useEffect(() => {
        const getData = async () => {
            try {
                const deckRes = await getDeck(deckId);
                setDeck(deckRes);
                setFormData({
                    ...deckRes,
                    user: `/api/users/${deckRes.user.id}`,
                    hero: deckRes.hero ? `/api/cards/${deckRes.hero.id}` : null,
                });

                if (deckRes.hero) {
                    setSelectedHeroId(deckRes.hero.id);
                    const cardFRes = await getCardById(deckRes.hero.id);
                    setCardsF(cardFRes);

                    if (cardFRes.mainFaction && cardFRes.mainFaction.name) {
                        const factionCards = await getAllOtherThanHeroWithFaction(cardFRes.mainFaction.name);
                        setCards(factionCards); // This sets cards state based on factionCards
                    } else {
                        console.error("Le héros n'a pas de faction principale définie.");
                        setCards([]);
                    }
                } else {
                    const heroCards = await getAllHero();
                    setCards(heroCards); // This sets cards state based on heroCards
                }

                if (deckRes.deckCards && deckRes.deckCards.length > 0) {
                    const deckCardsWithDetails = await Promise.all(deckRes.deckCards.map(async (deckCard) => {
                        const deckCardDetails = await getDeckCardById(deckCard.id);
                        const cardDetails = await getCardById(deckCardDetails.card.id);
                        return {
                            ...deckCardDetails,
                            card: cardDetails,
                        };
                    }));

                    setCardsDeck(deckCardsWithDetails);
                }
            } catch (error) {
                console.error('Erreur lors du chargement des données du deck :', error);
                setMsgErrorDeck('Erreur lors du chargement des données du deck. Veuillez réessayer.');
            }
        };

        getData();
    }, [deckId]);

    const onHandlerSubmit = async (event) => {
        event.preventDefault();

        try {
            if (formData && JSON.stringify(formData) !== JSON.stringify(deck)) {
                await updateDeck(deckId, formData);
                setMsgSuccessDeck('Deck mis à jour avec succès !');
            } else {
                setMsgSuccessDeck('Aucune modification détectée.');
            }

            await Promise.all(
                cardsDeck.map(async (deckCard) => {
                    const updatedDeckCard = {
                        deck: `/api/decks/${deckId}`,
                        card: `/api/cards/${deckCard.card.id}`,
                        qty: deckCard.qty,
                    };
                    if (deckCard.id) {
                        const originalDeckCard = await getDeckCardById(deckCard.id);
                        if (updatedDeckCard.qty !== originalDeckCard.qty) {
                            await updateDeckCard(deckCard.id, updatedDeckCard);
                        }
                    } else {
                        await postDeckCard(updatedDeckCard);
                    }
                })
            );

        } catch (error) {
            console.error('Erreur lors de la mise à jour du deck :', error);
            setMsgErrorDeck('Erreur lors de la mise à jour du deck. Veuillez réessayer.');
        }
    };

    const onChangeHandler = (event) => {
        const { name, value } = event.target;
        setFormData({ ...formData, [name]: value });
    };

    const onChangeHero = async () => {
        setFormData({ ...formData, hero: null });
        const res = await getAllHero();
        setCards(res); // This updates cards state with res
    };

    const removeCard = (card) => {
        const updatedCardsDeck = cardsDeck.map(item => {
            if (item.card.id === card.id && item.qty > 1) {
                return { ...item, qty: item.qty - 1 };
            }
            return item;
        });
        setCardsDeck(updatedCardsDeck.filter(item => item.qty > 0));
    };

    const addCard = async (card) => {
        setMsgErrorDeck(null);

        const cardIndex = cardsDeck.findIndex(item => item.card.id === card.id);
        if (cardIndex !== -1) {
            const updatedCardsDeck = [...cardsDeck];
            if (updatedCardsDeck[cardIndex].qty < 3) {
                updatedCardsDeck[cardIndex].qty += 1;
                setCardsDeck(updatedCardsDeck);
            } else {
                setMsgErrorDeck("Vous ne pouvez pas ajouter plus de 3 exemplaires d'une même carte.");
            }
        } else {
            const newCardDeck = {
                card: card,
                qty: 1
            };
            setCardsDeck([...cardsDeck, newCardDeck]);
        }
    };

    const getNbCartes = () => {
        return cardsDeck.reduce((total, card) => total + card.qty, 0);
    };

    const getNbRareCartes = () => {
        return cardsDeck.reduce((total, card) => {
            if (card.card.rarity.name === 'Rare') {
                return total + card.qty;
            }
            return total;
        }, 0);
    };

    if (!deck) {
        return null; // Add loading state or component while deck data is loading
    }

    return (
        <>
            <div className="container">
                <h1>Modifier le deck</h1>
            </div>
            <section>
                <div className="container">
                    <div className="row">
                        <div className="col-8">
                            <div className="row">
                                {cards.map((card) => (
                                    <div key={`cards-${card.id}`} className="col-3">
                                        <div className="mb-4" onClick={() => addCard(card)}>
                                            <img
                                                src={`/img/cards/${card.picture}`}
                                                className="img-fluid"
                                                alt="..."
                                            />
                                        </div>
                                    </div>
                                ))}
                            </div>
                        </div>

                        <div className="col-4">
                            <form onSubmit={onHandlerSubmit}>
                                {formData && formData.hero && (
                                    <div onClick={onChangeHero} className="mb-3">
                                        <img
                                            className="img-fluid"
                                            src={`/img/cards/${formData.hero.picture}`}
                                            alt="Hero"
                                        />
                                    </div>
                                )}

                                <div className="mb-3">
                                    <label htmlFor="name" className="form-label">
                                        Nom du deck
                                    </label>
                                    <input
                                        type="text"
                                        name="name"
                                        onChange={onChangeHandler}
                                        value={formData?.name || ''}
                                        className="form-control"
                                        id="name"
                                        placeholder="Entrez le nom de votre deck"
                                    />
                                </div>

                                <div className="mb-3">
                                    <div className="d-flex justify-content-between">
                                        <div className={`${getNbCartes() > 39 ? 'text-danger' : ''}`}>
                                            Nb cartes: {getNbCartes()} / 39
                                        </div>
                                        <div className={`text-end ${getNbRareCartes() > 7 ? 'text-success' : ''}`}>
                                            Nb rare: {getNbRareCartes()} / 7
                                        </div>
                                    </div>
                                    <ul className="list-group">
                                        {cardsDeck.map((deckCard, index) => (
                                            <li key={`deckCard-${index}`} className="list-group-item">
                                                <div className="d-flex justify-content-between align-items-center">
                                                    <img
                                                        src={`/img/cards/${deckCard.card.picture}`}
                                                        width="50px"
                                                        alt="..."
                                                    />
                                                    <div>
                                                        {deckCard.qty} x {deckCard.card.name}
                                                    </div>
                                                    <div>
                                                        <button
                                                            type="button"
                                                            onClick={() => addCard(deckCard.card)}
                                                            className="btn btn-primary"
                                                        >
                                                            +
                                                        </button>
                                                        &nbsp;
                                                        <button
                                                            type="button"
                                                            onClick={() => removeCard(deckCard.card)}
                                                            className="btn btn-primary"
                                                        >
                                                            -
                                                        </button>
                                                    </div>
                                                </div>
                                            </li>
                                        ))}
                                    </ul>
                                </div>

                                <div className="mt-3 mb-3">
                                    <button className="btn btn-success mr-2" type="submit">
                                        Mettre à jour
                                    </button>
                                    <Link to={`/decks/${deckId}`} className="btn btn-secondary">
                                        Retour
                                    </Link>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </>
    );
}
