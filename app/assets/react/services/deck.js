import axios from 'axios';

export const getAll = async () => {
    const res = await axios.get(`/api/decks.json`, {
        headers: {
            'Content-Type': 'application/json'
        }
    });
    return res.data;
};

export const getOne = async (deckId) => {
    const res = await axios.get(`/api/decks/${deckId}.json`, {
        headers: {
            'Content-Type': 'application/json'
        }
    });
    return res.data;
};

export const post = async (deck) => {
    const res = await axios.post(`/api/decks.json`, deck,  {
        headers: {
            'Content-Type': 'application/json'
        }
    });
    return res.data;
}

export const deleteOne = async (deckId) => {
    const res = await axios.delete(`/api/decks/${deckId}.json`, {
        headers: {
            'Content-Type': 'application/json'
        }
    });
    return res.data;
};