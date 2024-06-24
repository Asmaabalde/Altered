import axios from 'axios';

export const getAll = async () => {
    const res = await axios.get(`/api/cards.json`, {
        headers: {
            'Content-Type': 'application/json'
        }
    });
    return res.data;
};

export const getAllHero = async () => {
    const res = await axios.get(`/api/cards.json?cardType.name=Hero`, {
        headers: {
            'Content-Type': 'application/json'
        }
    });
    return res.data;
};

export const getAllOtherThanHeroWithFaction = async (faction) => {
    const res = await axios.get(`/api/cards.json?mainFaction.name=${faction}&cardType.name%5B%5D=Spell&cardType.name%5B%5D=Spell&cardType.name%5B%5D=Character`, {
        headers: {
            'Content-Type': 'application/json'
        }
    });
    return res.data;
};

export const getOne = async (cardId) => {
    const res = await axios.get(`/api/cards/${cardId}.json`, {
        headers: {
            'Content-Type': 'application/json'
        }
    });
    return res.data;
};