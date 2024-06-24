import React, {useState, useEffect} from 'react';
import {
    Link,
} from "react-router-dom";


import {getAll} from '../../services/card';

export default function () {
    const [cards, setCards] = useState([]);

    useEffect(() => {
        const getData = async () => {
            const res = await getAll();
            setCards(res);
        };

        getData();
    }, []);

    return <>
        <div className="container">
            <h1>Liste des cartes</h1>
        </div>
        
        <section>
            <div className="container">
                <div className='row'>
                    {cards.map(card => <div key={`list-card-${card.id}`} className="col-3">
                        <div className="card mb-4">
                            <img src={`/img/cards/${card.picture}`} className="card-img-top" alt="..." />
                            <div className="card-body">
                                <h5 className="card-title">{card.name}</h5>
                                <Link to={`/cards/${card.id}`} className="btn btn-primary">
                                    Voir la carte
                                </Link>
                            </div>
                        </div>
                    </div>)}
                </div>
            </div>
        </section>
    </>;
}
