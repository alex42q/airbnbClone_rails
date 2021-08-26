import React, {useEffect, useState} from 'react'
import "./Header.css"
import Nav from "../Nav/Nav"
import axios from "axios"

export default function Header() {

    useEffect(()=>{
        axios.get("http://localhost:5000/api/v1/todos")
        .then(res=>{
            console.log(res.data)
        })
        .catch(err=>{
            console.log(err)
        })
    }, [])

    return (
        <div className='header'>
            <Nav />
            <div className='container mx-auto max-w-4xl' >
                <div className='grid grid-cols-5 mt-10  bg-white rounded-3xl  justify-between gap-4'>
                    <div className='p-1.5 items-center justify-center input'>
                        
                            <label><h5 className='text-sm'>Topothesia</h5></label>
                            <input className='border-opacity-0 outline-none' type='text' placeholder='Pou thelete na pate?'></input>
                        
                    </div>
                    <div className='p-1.5 items-center justify-center input'>
                    <label><h5 className='text-sm'>Topothesia</h5></label>
                            <input className='border-opacity-0 outline-none' type='text' placeholder='Pou thelete na pate?'></input>
                    </div>
                    <div className='p-1.5 items-center justify-center input'>
                    <label><h5 className='text-sm'>Topothesia</h5></label>
                            <input className='border-opacity-0 outline-none' type='text' placeholder='Pou thelete na pate?'></input>
                    </div>
                    <div className='p-1.5 items-center justify-center input'>
                    <label><h5 className='text-sm'>Topothesia</h5></label>
                            <input className='border-opacity-0 outline-none' type='text' placeholder='Pou thelete na pate?'></input>
                    </div>
                    <div className='p-1.5 mwx-w-1xl items-center text-right'>
                        <button className='kuklos rounded-full p-5'>
                      test
                        </button>
                    </div>
                    
                </div>
            </div>
            <div className='container mx-auto justify-center flex items-center h-4/6 flex-col'>
                <div className='text-center'>
                    <h2 className='text-lg'>Δεν έχετε αποφασίσει πού θέλετε να πάτε; Τέλεια!</h2>
                </div>
                <a className='bg-white p-4 rounded-full w-auto mt-3'><span className='eucolor'>Ευέλικτη αναζήτηση</span></a>
            </div>
        </div>
    )
}
