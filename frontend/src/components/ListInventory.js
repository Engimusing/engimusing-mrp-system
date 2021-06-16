import React, {useState, useEffect} from 'react'
import axios from 'axios'
import Link from 'react-router-dom/Link'
import Cookies from 'js-cookie'
import { axiosWithAuth } from '../utils/axiosWithAuth'
import { connect, useDispatch } from "react-redux";
import { RETRIEVE_PARTS } from "../actions/constants";
import Search from './Search'

function ListInventory(props) {
    const [loading, setLoading] = useState(true)
    const dispatch = useDispatch()
    

    useEffect(() => {
      setLoading(true)
        axiosWithAuth().get('inventory').then(res => {
            console.log(res.data)
            dispatch({type: RETRIEVE_PARTS, payload: res.data})
            setLoading(false)
        }) 
      
    }, [dispatch])
    
    if(!loading) {
        return (
            <div>
                <h1>Inventory List</h1>
                <Search />
                {props.filteredParts.map(item =>(
                    <div>
                        <Link to={`/part/${item.id}`}><strong>{item.partType}</strong></Link>
                        <br />
                        <em>{item.engimusing_part_number}</em> | <em>{item.location.map(loc => <em>{loc}</em>)}</em>
                        <p>{item.description}</p>
                        <div>
                        Manufacturers: {item.manufacturer.map(man => <p>{man}</p>)}
                        </div>

                    </div>
                ))}
                
            </div>
        )

    } else {
        return (<div>Loading...</div>)
    }
}

const mapStateToProps = state => {
    return {
        filteredParts: state.filteredParts,
    }
}

export default connect(mapStateToProps, {})(ListInventory)