import React, {useState, useEffect} from 'react';
import {
    Link,
    useParams 
} from "react-router-dom";

import {getOne, deleteOne} from '../../services/deck';

export default function ({user}) {
    let {deckId} = useParams();
    const [deck, setDeck] = useState(null);

    useEffect(() => {
        const getData = async () => {
            const res = await getOne(deckId);
            setDeck(res);
        };

        getData();
    }, []);

    const onClickDeleteHandler = async (event) => {
        console.log('delete');
        if (confirm('Etes vous sur de vouloir supprimer ce deck ?')) {
            await deleteOne(deckId);
            window.location.href = "/";
        }
    }

    return <>
        <div className="container">
            {deck &&<div className='d-flex justify-content-between align-items-center'>
                <h1 className='text-capitalize'>{ deck.name }</h1>
                <div>
                    <button onClick={(e) => onClickDeleteHandler(e)} className='btn btn-danger'>Supprimer</button>
                </div>
            </div>}
        </div>
        <section>
            <div className="container">
                {deck &&<div className='row'>
                    <div className='col-3'>
                        <img src={`/img/cards/${deck.hero ? deck.hero.picture : ''}`} className="card-img-top" alt="..." />
                    </div>
                     <div className='col-9'>
                        {deck.deckCards && deck.deckCards.map(deckCard => <div key={`deckCard-${deckCard.id}`} className={`${deckCard.card.rarity.name == 'Unique' ? 'text-warning' : ''} ${deckCard.card.rarity.name == 'Rare' ? 'text-success' : ''}`}>
                            {deckCard.qty} x {deckCard.card.name}
                        </div>)}
                    </div>
                </div>}
                <div className='row mt-4'>
                    <Link to={`/`} className="btn btn-primary">
                        Retour à la liste
                    </Link>
                </div>
            </div>
        </section>
    </>
}