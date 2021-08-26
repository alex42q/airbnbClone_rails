import React from 'react'

export default function containerGridFourColumns(props) {
    return (
        <div className='flex'>
        <div>
        <img className='locImages' src={props.image}></img>
    </div>
    <div className='text-center justify-center'>
        <h5 className='text-center justify-center pl-1'>{props.name}</h5>
    </div>
    </div>
    )
}
