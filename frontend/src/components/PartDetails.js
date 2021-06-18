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
            delete res.data.datasheet
            const cleanData = {...res.data}
            console.log(res.data)
            setSinglePart(cleanData)
            dispatch({type: UPDATE_PART_START, payload: cleanData})
            setLoading(false)
        }).catch(err => console.log(err))
    } ,[])

    if(!loading) {
        return (
            <div>
                <Link to={`/part/${partId}/edit`}>Edit Part</Link>
                <h1>{singlePart.partType}</h1>
                <p>{singlePart.description}</p>
                <p>{singlePart.engimusing_part_number}</p>
                <p>{singlePart.location}</p>
                <p>{singlePart.manufacturer}</p>
            </div>
        )
    } else {
        return <div>Loading...</div>
    }
}

export default connect(null, {})(PartDetails)