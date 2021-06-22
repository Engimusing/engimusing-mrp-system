import React, {useState, useEffect} from 'react'
import {axiosWithAuth} from '../utils/axiosWithAuth'
import Link from 'react-router-dom/Link'
import {UPDATE_PART_START} from '../actions/constants'
import {connect, useDispatch} from 'react-redux'


function PartDetails(props) {
    const [singlePart, setSinglePart] = useState({})
    const [loading, setLoading] = useState(false)
    let partId = props.match.params.id
    const dispatch = useDispatch()
    
    useEffect(() => {
        setLoading(true)
        axiosWithAuth().get(`/part/${partId}`).then(res => {
            console.log(res.data)
            if(res.data.datasheet === null) {
                delete res.data.datasheet
            }
            const cleanData = {...res.data}
            setSinglePart(cleanData)
            dispatch({type: UPDATE_PART_START, payload: cleanData})
            setLoading(false)
        }).catch(err => console.log(err))
    } ,[])
    

    if(!loading && singlePart.TypeFields) {
        return (
            <div>
                <Link to={`/part/${partId}/edit`}>Edit Part</Link>
                <Link className="m-lg-0" to={`/part/${partId}/delete`}>Delete Part</Link>
                <h1>{singlePart.partType}</h1>
                <p>{singlePart.description}</p>
                <p>{singlePart.engimusing_part_number}</p>
                <p>{!Array.isArray(singlePart.location) ? <p>{singlePart.location}</p> : singlePart.location.map(loc => <p>{loc.name}</p>)}</p>
                <p>{!Array.isArray(singlePart.manufacturer) ? <p>{singlePart.manufacturer}</p> : singlePart.manufacturer.map(vendor => <p>{vendor.name}</p>)}</p>
                <p>{!Array.isArray(singlePart.TypeFields) ? <><b>{singlePart.TypeFields.name}:</b> <p>{singlePart[singlePart.TypeFields.fields]}</p></> : singlePart.TypeFields.map(field => <><b>{field.name}:</b> <p>{singlePart[field.fields]}</p></>)}</p>
                {singlePart.datasheet ? <pre>{singlePart.datasheet}</pre> : ""}
            </div>
        )
    } else {
        return <div>Loading...</div>
    }
}

export default connect(null, {})(PartDetails)