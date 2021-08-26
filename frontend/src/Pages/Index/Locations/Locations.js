import React, {useEffect, useState} from 'react'
import "./Locations.css"
import axios from "axios"

export default function Locations() {
    const [locations, getAllLocations] = useState([])

    useEffect(()=>{
        axios.get("http://localhost:5000/api/v1/locations")
        .then(res=>{
            console.log(res.data)
            getAllLocations(res.data)
        })
        .catch(err=>{
            console.log(err)
        })
    }, [])

    return (
        <div className='p-10'>
            <div>
                <h2 className='text-xl'>Εξερευνήστε κοντινές περιοχές</h2>
            </div>
            <div className='grid grid-cols-4 gap-4'>
                {locations.map((items)=>{
                    return(<div id={items.id} key={items.id} className='flex'>
                        <div>
                            <img className='locImages' src={items.image}></img>
                        </div>
                        <div className='text-center justify-center'>
                            <h5 className='text-center justify-center pl-1'>{items.name}</h5>
                        </div>
                    </div>)
                })}
            </div>
        </div>
    )
}
