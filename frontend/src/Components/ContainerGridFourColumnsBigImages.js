import React from 'react'

export default function ContainerGridFourColumnsBigImages(props) {
    return (
        <div>
            <div>
                            <img className='leaveImages' src={props.image}></img>
                        </div>
                        <div className='text-center justify-center'>
                            <h5 className='text-center justify-center pl-1'>{props.title}</h5>
                        </div>
        </div>
    )
}
