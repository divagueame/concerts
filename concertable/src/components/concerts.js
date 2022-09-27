import React from 'react';

function Concerts(props){
    return <div>
        <h1>These concerts are from the api</h1>
        {props.concerts.map((concert)=>{
            return <div key={concert.id}>
                <h2>{concert.price}</h2>
                </div> 
        })
        }
    </div>
}

export default Concerts;