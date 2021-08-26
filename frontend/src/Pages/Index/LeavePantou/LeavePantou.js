import React, {useEffect, useState} from 'react'
import axios from "axios"

export default function LeavePantou() {
    const [leavePatnou, getAllLeavePantou] = useState([])

    useEffect(()=>{
        axios.get("http://localhost:5000/api/v1/leavepantou")
        .then(res=>{
            getAllLeavePantou(res.data)
        })
        .catch(err=>{
            console.log(err)
        })
    }, [])
    return (
        <div className='p-10'>
            <div>
                <h2 className='text-xl'>Ζήστε παντού</h2>
            </div>
            <div className='grid grid-cols-4 gap-4'>
            {leavePatnou.map((items)=>{
                    return(<div id={items.id} key={items.id}>
                        <div>
                            <img className='leaveImages' src={items.image}></img>
                        </div>
                        <div className='text-center justify-center'>
                            <h5 className='text-center justify-center pl-1'>{items.title}</h5>
                        </div>
                    </div>)
                })}
            </div>
        </div>
    )
}
