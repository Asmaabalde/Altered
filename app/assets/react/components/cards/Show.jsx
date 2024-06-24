import React, {useState, useEffect} from 'react';
import {
    Link,
    useParams 
} from "react-router-dom";

import {getOne} from '../../services/card';

export default function ({user}) {
    let {cardId} = useParams();
    const [card, setCard] = useState(null);

    useEffect(() => {
        const getData = async () => {
            const res = await getOne(cardId);
            setCard(res);
        };

        getData();
    }, []);

    return <>
        {card && <><div className="container">
            <h1 className='text-capitalize mt-4'>{ card.name }</h1>
            <div>
                <img className='img-fluid' src={`/img/cards/${card.picture}`} alt="" />
            </div>
        </div>
        <section>
            <div className="container">
                <div className='row'>
                    <Link to={`/cards`} className="btn btn-primary">
                        Retour à la liste
                    </Link>
                </div>
            </div>
        </section></>}
    </>
}