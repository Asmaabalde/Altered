import axios from 'axios';

export const getAll = async () => {
    const res = await axios.get(`/api/deck_cards.json`, {
        headers: {
            'Content-Type': 'application/json'
        }
    });
    return res.data;
};



export const getOne = async (deckCardId) => {
    const res = await axios.get(`/api/deck_cards/${deckCardId}.json`, {
        headers: {
            'Content-Type': 'application/json'
        }
    });
    return res.data;
};


export const post = async (deckCard) => {
    const res = await axios.post(`/api/deck_cards.json`, deckCard, {
        headers: {
            'Content-Type': 'application/json'
        }
    });
    return res.data;
}


export const deleteOne = async (deckCardId) => {
    const res = await axios.delete(`/api/deck_cards/${deckCardId}.json`, {
        headers: {
            'Content-Type': 'application/json'
        }
    });
    return res.data;
};
