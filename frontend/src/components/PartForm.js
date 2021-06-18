import React from 'react'
import { connect } from "react-redux";
import { addPart, updatePart } from "../actions";


function PartForm(props) {
    console.log(props)
    const [part, setPart] = React.useState({
		"partType": "",
		"description": "",
        "engimusing_part_number": "",
        "location": [],
        "manufacturer": [],
	});

    const [locationName, setLocationName] = React.useState("")
    const [manufacturerName, setManufacturerName] = React.useState("")

    React.useEffect(() => {
        if(!props.editing) {
            setPart({
		"partType": "",
		"description": "",
        "engimusing_part_number": "",
        "location": [],
        "manufacturer": [],
	})
        } else {
            setPart(props.editPart)
            // TODO: Turn this into a map
            setLocationName(props.editPart.location[0])
            setManufacturerName(props.editPart.manufacturer[0])
        }
    }, [props.editing, props.editPart])

	const handleChange = e => {
        console.log(e.target.name, e.target.value)
        if(e.target.name === "locName") {
            setLocationName(e.target.value)
        } else if(e.target.name === "manName") {
            setManufacturerName(e.target.value)
        } else {
            setPart({...part, [e.target.name]: e.target.value})
        }
	};

	const handleSubmit = e => {
		e.preventDefault();
        if(locationName && manufacturerName) {
            console.log(locationName, manufacturerName, part)
            part.location = [{"name": locationName}]
            part.manufacturer = [{"name": manufacturerName}]

        }
        console.log(part)
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
                    <label htmlFor="locName">Location:</label>
                    <input class="form-control" name="locName" type="text" placeholder="Location..." onChange={handleChange} value={locationName} />
                    
                    
                </div>
                <div class="form-group">
                    <label htmlFor="manName">Manufacturer:</label>
                    <input class="form-control" name="manName" type="text" placeholder="Manufacturer..." onChange={handleChange} value={manufacturerName}/>
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