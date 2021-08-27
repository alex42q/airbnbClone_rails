import React, {useEffect, useState} from 'react'
import "./Locations.css"
import axios from "axios"
import ContainerGridFourColumns from '../../../Components/containerGridFourColumns'

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
            <div className='grid grid-cols-1 gap-4  md:grid-cols-2 xl:grid-cols-4'>
                {locations.map((items)=>{
                    return(<div id={items.id} key={items.id}>
                        <ContainerGridFourColumns image={items.image} name={items.name}/>
                    </div>)
                })}
            </div>
        </div>
    )
}
