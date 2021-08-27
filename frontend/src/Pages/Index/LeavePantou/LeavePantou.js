import React, {useEffect, useState} from 'react'
import axios from "axios"
import ContainerGridFourColumnsBigImages from '../../../Components/ContainerGridFourColumnsBigImages'

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
            <div className='lg:grid grid-cols-4 gap-4 sm:grid grid-cols-1'>
            {leavePatnou.map((items)=>{
                    return(<div id={items.id} key={items.id}>
                        <ContainerGridFourColumnsBigImages title={items.title} image={items.image} />
                    </div>)
                })}
            </div>
        </div>
    )
}
