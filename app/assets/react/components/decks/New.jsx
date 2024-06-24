import React, {useState, useEffect} from 'react';
import copy from 'copy-to-clipboard';

import {post} from '../../services/deck';
import {getAllHero, getAllOtherThanHeroWithFaction} from '../../services/card';

export default function ({user}) {
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

    useEffect(() => {
        const getData = async () => {
            const res = await getAllHero();
            setCards(res);
        };

        getData();
    }, []);

    const onHandlerSubmit = async (event) => {
        event.preventDefault();
        await post(deck);
        window.location.href = "/";
    }

    const onChangeHander = (event) => {
        const {name, value} = event.target;
        setDeck({...deck, name: value});
    }

    const onChangeHero = async () => {
        setDeck({...deck, hero: null});
        const res = await getAllHero();
        setCards(res);
    }

    const removeCard = (card) => {
        let newCards = cardsDeck;
        let deleteIndex = false;
        
        // On regarde si la carte est dans les cartes déjà ajouté.
        let cardIndex = cardsDeck.findIndex(item => item.card.name == card.name );
    
        if(cardIndex !== -1) {
            newCards = newCards.map((item, index) => {
                if (index !== cardIndex) {
                    return item
                } else {
                    if (newCards[index].qte > 1) {
                        console.log('minus');
                        return {
                            ...item,
                            qte: newCards[index].qte - 1
                        }
                    } else {
                        deleteIndex = index;
                    }
                }
            });
        }
        if (deleteIndex !== false) {
            newCards.splice(deleteIndex, 1);
        }
        console.log(newCards);

        setCardsDeck(cardsDeck => newCards);
    }

    const addCard = async (card) => {
        setMsgErrorDeck(null);
        let newCards = cardsDeck;
        
        // On regarde si la carte est dans les cartes déjà ajouté.
        let cardIndex = cardsDeck.findIndex(item => item.card.name == card.name );
        
        if (card.cardType.name == 'Hero') {
            setDeck({...deck, hero: `/api/cards/${card.id}`});
            setSelectedHero(card);
            const res = await getAllOtherThanHeroWithFaction(card.mainFaction.name);
            setCards(res);
        } else {
            if(cardIndex !== -1) {
                console.log('modify');
                newCards = newCards.map((item, index) => {
                    if (index == cardIndex) {
                        if (newCards[index].qte < 3) {
                            return {
                                ...item,
                                qte: newCards[index].qte + 1
                            }
                        } else {
                            setMsgErrorDeck("Vous en avez plus de 3 exemplaires");
                        }
                    }
                    
                    return item
                });
            } else {
                console.log('add');
                // Sinon on ajoute la carte en qte = 1
                newCards = [...newCards, {card: card, qte: 1}];
            }

            setCardsDeck(cardsDeck => newCards);
        }
        
    }

    const onExportButton = () => {
        let deck = cardsDeck.map(card => `${card.qte} ${card.card.reference}`).join('\n');

        copy(deck, {
            debug: true,
            message: 'Press #{key} to copy',
        });

        setMsgSuccessDeck('List bien copié !');
    }

    const getNbCartes = () => {
        let nb = 0;
        cardsDeck.map(card => nb = nb + card.qte);

        return nb;
    }

    const getNbRareCartes = () => {
        let nb = 0;
        cardsDeck.map(card => {
            if (card.card.rarity.name == "Rare") {
                nb = nb + card.qte
            }
        });

        return nb;
    }

    return <>
        <div className="container">
            <h1>Créer un nouveau deck</h1>
        </div>
        <section>
            <div className="container">
                <div className="row">
                    <div className="col-8">
                        <div className="row">
                            {cards.map(card => <div key={`cards-${card.id}`} className="col-3">
                                <div className="mb-4" onClick={() => addCard(card)}>
                                    <img src={`/img/cards/${card.picture}`} className="img-fluid" alt="..." />
                                </div>
                            </div>)}
                        </div>
                    </div>

                    <div className="col-4">
                        <form onSubmit={onHandlerSubmit}>
                            {selectedHero && <div onClick={() => onChangeHero()} className="mb-3">
                                <img className='img-fluid' src={`/img/cards/${selectedHero.picture}`} alt="" />
                            </div>}

                            <div>
                                <button className='btn btn-primary' type='button' onClick={(e) => onExportButton()}>Export list</button>
                            </div>

                            <div className="mb-3">
                                <label htmlFor="name" className="form-label">Nom du deck</label>
                                <input type="text" name="name" onChange={onChangeHander} value={deck.name} className="form-control" id="name" placeholder="Entrez le nom de votre deck" />
                            </div>

                            <div className="mb-3">
                                <div className='d-flex justify-content-between'>
                                    <div className={`${ getNbCartes() > 39 ? 'text-danger' : ''}`}>Nb cartes: { getNbCartes() } / 39</div>
                                    <div className={`text-end ${ getNbRareCartes() > 15 ? 'text-danger' : ''}`}>Nb rares: {getNbRareCartes()} / 15</div>
                                </div>
                            </div>

                            { msgSuccessDeck && <div className='alert alert-success alert-dismissible'>
                                { msgSuccessDeck }
                                <button type="button" className="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>}

                            { msgErrorDeck && <div className='alert alert-danger alert-dismissible'>
                                { msgErrorDeck }
                                <button type="button" className="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>}

                            {cardsDeck.map(card => <div key={`deck-cards-${card.card.id}`} className="">
                                <div className={`d-flex justify-content-between ${card.card.rarity.name == 'Unique' ? 'text-warning' : ''} ${card.card.rarity.name == 'Rare' ? 'text-success' : ''}`}>
                                    <img src={`/img/cards/${card.card.picture}`} width="50px" alt="..." />
                                    <div>{card.qte} x {card.card.name}</div>
                                    <div>
                                        <button type='button' onClick={() => addCard(card.card)} className="btn btn-primary">+</button>
                                        &nbsp;
                                        <button type='button' onClick={() => removeCard(card.card)} className="btn btn-primary">-</button>
                                    </div>
                                </div>
                            </div>)}

                            <div className="mt-3 mb-3">
                                <button className='btn btn-success' type='submit'>Sauvegarder</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </>;
}