import React, {useState, useEffect} from 'react';
import {
    Link,
} from "react-router-dom";


import {getAll} from '../../services/deck';

export default function () {
    const [decks, setDecks] = useState([]);

    useEffect(() => {
        const getData = async () => {
            const res = await getAll();
            setDecks(res);
        };

        getData();
    }, []);

    return <>
        <div className="container">
            <h1>List Deck</h1>
        </div>
        
        <section>
            <div className="container">
                <div className='row'>
                    {decks.map(deck => <div key={`decks-list-${deck.id}`} className="col-3">
                        <div className="card mb-4">
                            <img src={`/img/cards/${deck.hero ? deck.hero.picture : ''}`} className="card-img-top" alt="..." />
                            <div className="card-body">
                                <h5 className="card-title text-capitalize">{deck.name}</h5>
                                <Link to={`/decks/${deck.id}`} className="btn btn-primary">
                                    Voir le deck
                                </Link>
                            </div>
                        </div>
                    </div>)}
                </div>
            </div>
        </section>
    </>;
}
