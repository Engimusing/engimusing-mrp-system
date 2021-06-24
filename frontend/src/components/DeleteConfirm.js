import React from 'react'
import {connect} from 'react-redux'
import {deletePart} from '../actions/index'
import Link from 'react-router-dom/Link'

function DeleteConfirm(props) {
    /** 
     Pulls in data from the Parts Detail component. If there are issues with this component's data, check there.
     Once it pulls in that data from the detail component it allows you to make a deletion call to the api to delete the part.
    */
    const { id } = props.match.params

    const handleConfirm = (id) => {
        props.deletePart(id)
        props.history.push('/')
    }

    return (
        <div>
            <h1>Are you sure you want to delete Part # {props.engimusing_part_number} - {props.description}?</h1>
            <button onClick={() => handleConfirm(id)} className="btn btn-danger">Confirm</button>
            <Link className="btn" to={`/part/${id}`}>Cancel</Link>
        </div>
    )
}

const mapStateToProps = state => {
    return {
        engimusing_part_number: state.updatingPart.engimusing_part_number,
        description: state.updatingPart.description
    }
}

export default connect(mapStateToProps, {deletePart})(DeleteConfirm)
