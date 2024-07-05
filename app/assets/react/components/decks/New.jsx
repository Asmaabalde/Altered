import React, { useState, useEffect } from 'react';
import copy from 'copy-to-clipboard';

import { post as postDeck } from '../../services/deck';
import { post as postDeckCard } from '../../services/deckCard';
import { getAllHero, getAllOtherThanHeroWithFaction } from '../../services/card';

export default function New({ user }) {

    // Variables d'état
    const [deck, setDeck] = useState({
        name: '',
        hero: null,
        user: `/api/users/${user.id}`
    });
    const [selectedHero, setSelectedHero] = useState(null);
    const [msgErrorDeck, setMsgErrorDeck] = useState(null);
    const [msgSuccessDeck, setMsgSuccessDeck] = useState(null);
    const [cardsDeck, setCardsDeck] = useState([]);
    const [cards, setCards] = useState([]);

    // Récupération des cartes héros au montage du composant
    useEffect(() => {
        const getData = async () => {
            const res = await getAllHero();
            setCards(res);
        };

        getData();
    }, []);

    // Gestion de la soumission du formulaire
    const onHandlerSubmit = async (event) => {
        event.preventDefault();
    
        try {
            // Création du deck et récupération des données depuis le backend
            const newDeck = await postDeck(deck);
            setDeck(newDeck);
    
            // Enregistrement de chaque carte du deck dans la table deck_card
            await Promise.all(
                cardsDeck.map(async (card) => {
                    const deckCard = {
                        deck: `/api/decks/${newDeck.id}`,
                        card: `/api/cards/${card.card.id}`,
                        qty: card.qte
                    };
                    await postDeckCard(deckCard);
                })
            );
    
            setMsgSuccessDeck('Deck sauvegardé avec succès !');
            setCardsDeck([]);
            setSelectedHero(null);
            setDeck({
                name: '',
                hero: null,
                user: `/api/users/${user.id}`
            });
    
            // Redirection de l'utilisateur vers une autre page
            window.location.href = "/"; // Remplacez par l'URL de la page souhaitée
        } catch (error) {
            console.error('Erreur lors de la sauvegarde du deck :', error);
            setMsgErrorDeck('Erreur lors de la sauvegarde du deck. Veuillez réessayer.');
        }
    };

    // Gestion du changement de saisie
    const onChangeHandler = (event) => {
        const { name, value } = event.target;
        setDeck({ ...deck, [name]: value });
    };

    // Gestion du changement de héros
    const onChangeHero = async () => {
        setDeck({ ...deck, hero: null });
        const res = await getAllHero();
        setCards(res);
    };

    // Suppression d'une carte du deck
    const removeCard = (card) => {
        let newCards = cardsDeck.slice();
        let deleteIndex = false;

        let cardIndex = cardsDeck.findIndex((item) => item.card.name === card.name);

        if (cardIndex !== -1) {
            newCards = newCards.map((item, index) => {
                if (index !== cardIndex) {
                    return item;
                } else {
                    if (newCards[index].qte > 1) {
                        return {
                            ...item,
                            qte: newCards[index].qte - 1
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

    // Ajout d'une carte au deck
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
                        if (newCards[index].qte < 3) {
                            return {
                                ...item,
                                qte: newCards[index].qte + 1
                            };
                        } else {
                            setMsgErrorDeck('Vous avez déjà plus de 3 exemplaires de cette carte.');
                        }
                    }
                    return item;
                });
            } else {
                newCards.push({ card: card, qte: 1 });
            }

            setCardsDeck(newCards);
        }
    };

    // Gestion du clic sur le bouton d'exportation
    const onExportButton = () => {
        let deckList = cardsDeck.map((card) => `${card.qte} ${card.card.reference}`).join('\n');

        copy(deckList, {
            debug: true,
            message: 'Appuyez sur #{key} pour copier'
        });

        setMsgSuccessDeck('Liste copiée avec succès !');
    };

    // Obtenir le nombre total de cartes dans le deck
    const getNbCartes = () => {
        return cardsDeck.reduce((total, card) => total + card.qte, 0);
    };

    // Obtenir le nombre de cartes rares dans le deck
    const getNbRareCartes = () => {
        return cardsDeck.reduce((total, card) => {
            if (card.card.rarity.name === 'Rare') {
                return total + card.qte;
            }
            return total;
        }, 0);
    };

    return (
        <>
            <div className="container">
                <h1>Créer un nouveau deck</h1>
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
                                    <div onClick={() => onChangeHero()} className="mb-3">
                                        <img
                                            className="img-fluid"
                                            src={`/img/cards/${selectedHero.picture}`}
                                            alt=""
                                        />
                                    </div>
                                )}

                                <div>
                                    <button className="btn btn-primary" type="button" onClick={onExportButton}>
                                        Exporter la liste
                                    </button>
                                </div>

                                <div className="mb-3">
                                    <label htmlFor="name" className="form-label">
                                        Nom du deck
                                    </label>
                                    <input
                                        type="text"
                                        name="name"
                                        onChange={onChangeHandler}
                                        value={deck.name}
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

                                {cardsDeck.map((card) => (
                                    <div key={`deck-cards-${card.card.id}`} className="">
                                        <div
                                            className={`d-flex justify-content-between ${
                                                card.card.rarity.name === 'Unique' ? 'text-warning' : ''
                                            } ${card.card.rarity.name === 'Rare' ? 'text-success' : ''}`}
                                        >
                                            <img
                                                src={`/img/cards/${card.card.picture}`}
                                                width="50px"
                                                alt="..."
                                            />
                                            <div>
                                                {card.qte} x {card.card.name}
                                            </div>
                                            <div>
                                                <button
                                                    type="button"
                                                    onClick={() => addCard(card.card)}
                                                    className="btn btn-primary"
                                                >
                                                    +
                                                </button>
                                                &nbsp;
                                                <button
                                                    type="button"
                                                    onClick={() => removeCard(card.card)}
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
                                        Sauvegarder
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
