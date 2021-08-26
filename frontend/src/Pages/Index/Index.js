import React from 'react'
import "./Index.css"
import Header from './Header/Header'
import Locations from "./Locations/Locations"
import LeavePantou from './LeavePantou/LeavePantou'


export default function Index() {
    return (
        <div>
            <Header />
            <Locations />
            <LeavePantou />
        </div>
    )
}
