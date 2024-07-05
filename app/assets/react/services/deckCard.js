import axios from 'axios';
const API_BASE_URL = "http://localhost:8001";

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

export const put = async (deckCardId, deckCard) => {
    const url = `${API_BASE_URL}/api/deck_cards/${deckCardId}`;
    console.log('URL de la requête PUT:', url);
    const res = await axios.put(url, deckCard, {
        headers: {
            'Content-Type': 'application/json'
        }
    });
    return res.data;
};


export const deleteOne = async (deckCardId) => {
    const res = await axios.delete(`/api/deck_cards/${deckCardId}.json`, {
        headers: {
            'Content-Type': 'application/json'
        }
    });
    return res.data;
};
