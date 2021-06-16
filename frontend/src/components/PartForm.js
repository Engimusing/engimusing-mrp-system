import React from 'react'
import { connect } from "react-redux";
import { addPart, updatePart } from "../actions";


function PartForm(props) {
    console.log(props)
    const [part, setPart] = React.useState({
		"partType": "",
		"description": "",
        "engimusing_part_number": "",
        "location": "",
        "manufacturer": "",
	});

    React.useEffect(() => {
        if(!props.editing) {
            setPart({
		"partType": "",
		"description": "",
        "engimusing_part_number": "",
        "location": "",
        "manufacturer": "",
	})
        } else {
            setPart(props.editPart)
        }
    }, [props.editing, props.editPart])

	const handleChange = e => {
        console.log(e.target.name, e.target.value)
		setPart({ ...part, [e.target.name]: e.target.value });
	};

	const handleSubmit = e => {
		e.preventDefault();
        if(!props.editing) {
		    props.addPart(part);

        } else {
            props.updatePart(props.editPart.id, part)
        }
	};

    return (
            <form onSubmit={handleSubmit}>
                <div class="form-group">
                    <label htmlFor="partType">PartType:</label>
                    <input class="form-control" name="partType" type="text" placeholder="PartType..." onChange={handleChange} value={part.partType} />
                </div>
                <div class="form-group">
                    <label htmlFor="engimusing_part_number">Part Number:</label>
                    <input class="form-control" name="engimusing_part_number" type="text" placeholder="Part Number..." onChange={handleChange} value={part.engimusing_part_number} />
                </div>
                <div class="form-group">
                    <label htmlFor="description">Description:</label>
                    <input class="form-control" name="description" type="text" placeholder="Description..." onChange={handleChange} value={part.description} />
                </div>
                <div class="form-group">
                    <label htmlFor="location">Location:</label>
                    <input class="form-control" name="location" type="text" placeholder="Location..." onChange={handleChange} value={part.location} />
                </div>
                <div class="form-group">
                    <label htmlFor="manufacturer">Manufacturer:</label>
                    <input class="form-control" name="manufacturer" type="text" placeholder="Manufacturer..." onChange={handleChange} value={part.manufacturer} />
                </div>
                <br />
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
    )
}

const mapStateToProps = state => {
    return {
        editing: state.editingPart,
        editPart: state.updatingPart,
    }
}

export default connect(
	mapStateToProps,
	{ addPart, updatePart },
)(PartForm);