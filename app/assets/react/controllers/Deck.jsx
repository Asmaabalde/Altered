import React from 'react';
import {
    createBrowserRouter,
    RouterProvider,
} from "react-router-dom";

import DecksList from "../components/decks/List";
import DecksNew from "../components/decks/New";
import DecksShow from "../components/decks/Show";

export default function ({user}) {
    const router = createBrowserRouter([
        {
            path: "/",
            element: <DecksList />,
        },
        {
            path: "/decks/new",
            element: <DecksNew user={user} />,
        },
        {
            path: "/decks/:deckId",
            element: <DecksShow user={user} />,
        },
        {
            path : "/decks/edit/deckId",
            element: <DecksEdit user={user}/>
        }
    ]);

    return <RouterProvider router={ router } />;
}
