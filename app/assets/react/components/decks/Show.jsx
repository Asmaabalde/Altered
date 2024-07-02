import React, { useState, useEffect } from 'react';
import { Link, useParams } from "react-router-dom";
import { getOne, deleteOne } from '../../services/deck';
import { getOne as getDeckCardById } from '../../services/deckCard';
import { getOne as getCardById } from '../../services/card';

export default function DeckDetails({ user }) {
    let { deckId } = useParams();
    const [deck, setDeck] = useState(null);
    const [deckCards, setDeckCards] = useState([]);

    useEffect(() => {
        const getData = async () => {
            try {
                const deckRes = await getOne(deckId);
                setDeck(deckRes);

                if (deckRes.deckCards && deckRes.deckCards.length > 0) {
                    const deckCardsWithDetails = await Promise.all(deckRes.deckCards.map(async (deckCard) => {
                        const deckCardDetails = await getDeckCardById(deckCard.id);
                        const cardDetails = await getCardById(deckCardDetails.id);
                        return {
                            ...deckCardDetails,
                            card: cardDetails,
                        };
                    }));

                    setDeckCards(deckCardsWithDetails);
                }
            } catch (error) {
                console.error('Error fetching deck:', error);
            }
        };

        getData();
    }, [deckId]);

    const onClickDeleteHandler = async (event) => {
        console.log('delete');
        if (window.confirm('Etes vous sur de vouloir supprimer ce deck ?')) {
            try {
                await deleteOne(deckId);
                window.location.href = "/";
            } catch (error) {
                console.error('Error deleting deck:', error);
            }
        }
    };

    return (
        <>
            <div className="container">
                {deck && (
                    <div className='d-flex justify-content-between align-items-center'>
                        <h1 className='text-capitalize'>{deck.name}</h1>
                        <div>
                            <button onClick={onClickDeleteHandler} className='btn btn-danger mr-4'>Supprimer</button>
                               <Link to={`/decks/edit/${deckId}`} className='btn btn-primary'>Modifier</Link>
                        </div>
                    </div>
                )}
            </div>
            <section>
                <div className="container">
                    {deck && (
                        <div className='row'>
                            <div className='col-12 text-center mb-4'>
                                <img src={deck.hero ? deck.hero.imagePath : ''} className="card-img-top" alt="Hero" style={{ maxWidth: '200px', maxHeight: '300px' }} />
                            </div>
                            <div className='col-12 d-flex flex-wrap justify-content-center'>
                                {deckCards && deckCards.map(deckCard => (
                                    <div key={`deckCard-${deckCard.id}`} className={`card m-2 ${deckCard.card?.rarity?.name === 'Unique' ? 'text-warning' : ''} ${deckCard.card?.rarity?.name === 'Rare' ? 'text-success' : ''}`} style={{ width: '200px' }}>
                                        <img src={deckCard.card?.imagePath} className="card-img-top" alt={deckCard.card?.name || 'Unknown Card'} style={{ maxWidth: '100%', height: 'auto' }} />
                                        <div className="card-body">
                                            <h5 className="card-title">{deckCard.qty} x {deckCard.card?.name || 'Unknown Card'}</h5>
                                        </div>
                                    </div>
                                ))}
                            </div>
                        </div>
                    )}
                    <div className='row mt-4 justify-content-center'>
                        <Link to="/" className="btn btn-primary">
                            Retour à la liste
                        </Link>
                    </div>
                </div>
            </section>
        </>
    );
}
