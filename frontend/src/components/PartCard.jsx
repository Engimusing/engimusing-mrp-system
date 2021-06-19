import React from 'react'

export default function PartCard(props) {
    
    if(props && props.TypeFields) {
        return (
            <div>
                <h1>{props.partType}</h1>
                    <p>{props.engimusing_part_number}</p>
                    <p>{!Array.isArray(props.location) ? <p>{props.location}</p> : props.location.map(loc => <p>{loc}</p>)}</p>
                    <p>{!Array.isArray(props.manufacturer) ? <p>{props.manufacturer}</p> : props.manufacturer.map(vendor => <p>{vendor}</p>)}</p>
                    <p>{!Array.isArray(props.TypeFields) ? <><b>{props.TypeFields.name}:</b> <p>{props[props.TypeFields.fields]}</p></> : props.TypeFields.map(field => <><b>{field.name}:</b> <p>{props[field.fields]}</p></>)}</p>
                    {props.datasheet ? <pre>{props.datasheet}</pre> : ""}
            </div>
        )
    } else {
        return ""
    }
} 
