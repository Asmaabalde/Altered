import React from 'react';
import {
    createBrowserRouter,
    RouterProvider,
} from "react-router-dom";

import CardsList from "../components/cards/List";
import CardsShow from '../components/cards/Show';

export default function ({user}) {
    const router = createBrowserRouter([
        {
            path: "/cards",
            element: <CardsList />,
        },
        {
            path: "/cards/:cardId",
            element: <CardsShow user={user} />,
        }
    ]);

    return <RouterProvider router={ router } />;
}
