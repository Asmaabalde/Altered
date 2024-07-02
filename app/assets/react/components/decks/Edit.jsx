import React, { useState, useEffect } from 'react';
import { Link, useParams } from 'react-router-dom';
import { getOne as getDeck, put as updateDeck } from '../../services/deck';
import { post as postDeckCard, put as updateDeckCard, getOne as getDeckCardById } from '../../services/deckCard';
import { getAllHero, getAllOtherThanHeroWithFaction, getOne as getCardById } from '../../services/card';

export default function Edit({ user }) {
    let { deckId } = useParams();
    const [deck, setDeck] = useState(null);
    const [selectedHero, setSelectedHero] = useState(null);
    const [msgErrorDeck, setMsgErrorDeck] = useState(null);
    const [msgSuccessDeck, setMsgSuccessDeck] = useState(null);
    const [cardsDeck, setCardsDeck] = useState([]);
    const [cards, setCards] = useState([]);
    const [cardFac, setCardsF] = useState(null);

    useEffect(() => {
        const getData = async () => {
            try {
                const deckRes = await getDeck(deckId);
                setDeck(deckRes);

                if (deckRes.hero) {
                    setSelectedHero(deckRes.hero);
                    const cardFRes = await getCardById(deckRes.hero.id);
                    setCardsF(cardFRes);

                    if (cardFRes.mainFaction && cardFRes.mainFaction.name) {
                        const factionCards = await getAllOtherThanHeroWithFaction(cardFRes.mainFaction.name);
                        setCards(factionCards);
                    } else {
                        console.error("Le héros n'a pas de faction principale définie.");
                        setCards([]);
                    }
                } else {
                    const heroCards = await getAllHero();
                    setCards(heroCards);
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
            await updateDeck(deckId, deck);

            await Promise.all(
                cardsDeck.map(async (deckCard) => {
                    const updatedDeckCard = {
                        deck: `/api/decks/${deckId}`,
                        card: `/api/cards/${deckCard.card.id}`,
                        qty: deckCard.qty
                    };
                    if (deckCard.id) {
                        await updateDeckCard(deckCard.id, updatedDeckCard);
                    } else {
                        await postDeckCard(updatedDeckCard);
                    }
                })
            );

            setMsgSuccessDeck('Deck mis à jour avec succès !');
        } catch (error) {
            console.error('Erreur lors de la mise à jour du deck :', error);
            setMsgErrorDeck('Erreur lors de la mise à jour du deck. Veuillez réessayer.');
        }
    };

    const onChangeHandler = (event) => {
        const { name, value } = event.target;
        setDeck({ ...deck, [name]: value });
    };

    const onChangeHero = async () => {
        setDeck({ ...deck, hero: null });
        const res = await getAllHero();
        setCards(res);
    };

    const removeCard = (card) => {
        let newCards = cardsDeck.slice();
        let deleteIndex = false;

        let cardIndex = cardsDeck.findIndex((item) => item.card.name === card.name);

        if (cardIndex !== -1) {
            newCards = newCards.map((item, index) => {
                if (index !== cardIndex) {
                    return item;
                } else {
                    if (newCards[index].qty > 1) {
                        return {
                            ...item,
                            qty: newCards[index].qty - 1
                        };
                    } else {
                        deleteIndex = index;
                    }
                }
                return item;
            });
        }
        if (deleteIndex !== false) {
            newCards.splice(deleteIndex, 1);
        }

        setCardsDeck(newCards);
    };

    const addCard = async (card) => {
        setMsgErrorDeck(null);
        let newCards = cardsDeck.slice();

        let cardIndex = cardsDeck.findIndex((item) => item.card.name === card.name);

        if (card.cardType.name === 'Hero') {
            setDeck({ ...deck, hero: `/api/cards/${card.id}` });
            setSelectedHero(card);
            const res = await getAllOtherThanHeroWithFaction(card.mainFaction.name);
            setCards(res);
        } else {
            if (cardIndex !== -1) {
                newCards = newCards.map((item, index) => {
                    if (index === cardIndex) {
                        if (newCards[index].qty < 3) {
                            return {
                                ...item,
                                qty: newCards[index].qty + 1
                            };
                        } else {
                            setMsgErrorDeck('Vous avez déjà plus de 3 exemplaires de cette carte.');
                        }
                    }
                    return item;
                });
            } else {
                newCards.push({ card: card, qty: 1 });
            }

            setCardsDeck(newCards);
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
                                {selectedHero && (
                                    <div onClick={onChangeHero} className="mb-3">
                                        <img
                                            className="img-fluid"
                                            src={`/img/cards/${selectedHero.picture}`}
                                            alt=""
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
                                        value={deck?.name || ''}
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
                                        <div className={`text-end ${getNbRareCartes() > 15 ? 'text-danger' : ''}`}>
                                            Nb rares: {getNbRareCartes()} / 15
                                        </div>
                                    </div>
                                </div>

                                {msgSuccessDeck && (
                                    <div className="alert alert-success alert-dismissible">
                                        {msgSuccessDeck}
                                        <button
                                            type="button"
                                            className="btn-close"
                                            data-bs-dismiss="alert"
                                            aria-label="Close"
                                        ></button>
                                    </div>
                                )}

                                {msgErrorDeck && (
                                    <div className="alert alert-danger alert-dismissible">
                                        {msgErrorDeck}
                                        <button
                                            type="button"
                                            className="btn-close"
                                            data-bs-dismiss="alert"
                                            aria-label="Close"
                                        ></button>
                                    </div>
                                )}

                                {cardsDeck.map((deckCard) => (
                                    <div key={`deck-cards-${deckCard.card.id}`} className="">
                                        <div
                                            className={`d-flex justify-content-between ${deckCard.card.rarity.name === 'Unique' ? 'text-warning' : ''} ${deckCard.card.rarity.name === 'Rare' ? 'text-success' : ''}`}
                                        >
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
                                    </div>
                                ))}

                                <div className="mt-3 mb-3">
                                    <button className="btn btn-success" type="submit">
                                        Mettre à jour
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </>
    );
}
