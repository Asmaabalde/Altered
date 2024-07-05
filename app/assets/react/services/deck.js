import axios from 'axios';

// Définition de l'URL de base de l'API
const API_BASE_URL = "http://localhost:8001";

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

export const put = async (deckId, data) => {
    const url = `${API_BASE_URL}/api/decks/${deckId}`;
    console.log('URL de la requête PUT:', url);
    const response = await fetch(url, {
        method: 'PUT',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(data),
    });
    return response.json();
};
export const deleteOne = async (deckId) => {
    const res = await axios.delete(`/api/decks/${deckId}.json`, {
        headers: {
            'Content-Type': 'application/json'
        }
    });
    return res.data;
};