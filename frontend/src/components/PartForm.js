import React, {useState, useEffect, useRef} from 'react'
import { connect } from "react-redux";
import { addPart, updatePart } from "../actions";


function PartForm(props) {
    const fieldConn = useRef(null)
    const [part, setPart] = useState({
		"partType": "",
		"description": "",
        "engimusing_part_number": "",
        "location": [{"name": ""}],
        "manufacturer": [{"name": ""}],
        "TypeFields": [{"name": "", "fields": ""}],
        "char1": "",
        "char2": "",
        "char3": "",
        "char4": "",
        "char5": "",
        "char6": "",
        "char7": "",
        "char8": "",
        "char9": "",
        "char10": "",
        "char11": "",
        "char12": "",
        "char13": "",
        "char14": "",
        "char15": "",
        "char16": "",
        "char17": "",
        "char18": "",
        "char19": "",
        "char20": "",
        "char21": "",
        "char22": "",
        "char23": "",
        "char24": "",
        "char25": "",
        "char26": "",
        "char27": "",
        "char28": "",
        "char29": "",
        "char30": "",
        "char31": "",
        "char32": "",
        "char33": "",
        "char34": "",
        "char35": ""
        
        
	});

    useEffect(() => {
        console.log(props)
        if(!props.editing) {
            setPart({
                		"partType": "",
		"description": "",
        "engimusing_part_number": "",
        "location": [{"name": ""}],
        "manufacturer": [{"name": ""}],
        "TypeFields": [{"name": "", "fields": ""}],
        "char1": "",
        "char2": "",
        "char3": "",
        "char4": "",
        "char5": "",
        "char6": "",
        "char7": "",
        "char8": "",
        "char9": "",
        "char10": "",
        "char11": "",
        "char12": "",
        "char13": "",
        "char14": "",
        "char15": "",
        "char16": "",
        "char17": "",
        "char18": "",
        "char19": "",
        "char20": "",
        "char21": "",
        "char22": "",
        "char23": "",
        "char24": "",
        "char25": "",
        "char26": "",
        "char27": "",
        "char28": "",
        "char29": "",
        "char30": "",
        "char31": "",
        "char32": "",
        "char33": "",
        "char34": "",
        "char35": ""
            })
        } else {
            setPart({...props.editPart, removeItems: {removeLocations: [], removeManufacturers: [], removeTypeFields: []}})
        }
    }, [props.editing, props.editPart])

	const handleChange = e => {
        setPart({...part, [e.target.name]: e.target.value})
        
	};

    const handleArrayInputs = (index, e) => {
            if(e.target.placeholder === "Location...") {
                const values = [...part.location]
                values[index][e.target.name] = e.target.value
                setPart({...part, values})
            } else if(e.target.placeholder === "Manufacturer...") {
                const values = [...part.manufacturer]
                values[index][e.target.name] = e.target.value
                setPart({...part, values})
            } else {
                const values = [...part.TypeFields]
                values[index][e.target.name] = e.target.value
                values[index][fieldConn.current.name] = fieldConn.current.value
                setPart({...part, values})
                
            }
    }

    const addNewLocation = (e) => {
        e.preventDefault();
        setPart({...part, location: [...part.location, {"name": ""}]})
    }
    const addNewManufacturer = (e) => {
        e.preventDefault();
        setPart({...part, manufacturer: [...part.manufacturer, {"name": ""}]})
    }
    const addNewTypeField = (e) => {
        e.preventDefault();
        setPart({...part, TypeFields: [...part.TypeFields, {"name": "", "fields": ""}]})
    }

    const removeLocation = (e,index) => {
        e.preventDefault();
        let fields = part.location.filter(location => location !== part.location[index])
        let deleteIds = part.location.filter(location => location === part.location[index])
        setPart({...part, location: fields, removeItems: {...part.removeItems, removeLocations: [...part.removeItems.removeLocations, ...deleteIds]}})
        
    }
    const removeManufacturer = (e,index) => {
        e.preventDefault();
        let fields = part.manufacturer.filter(manufacturer => manufacturer !== part.manufacturer[index])
        let deleteIds = part.manufacturer.filter(manufacturer => manufacturer === part.manufacturer[index])
        setPart({...part, manufacturer: fields, removeItems: {...part.removeItems, removeManufacturers: [...part.removeItems.removeManufacturers, ...deleteIds]}})
        
    }
    const removeTypeField = (e,index) => {
        e.preventDefault();
        let fields = part.TypeFields.filter(typefield => typefield !== part.TypeFields[index])
        let deleteIds = part.TypeFields.filter(typefield => typefield === part.TypeFields[index])
        setPart({...part, TypeFields: fields, removeItems: {...part.removeItems, removeTypeFields: [...part.removeItems.removeTypeFields, ...deleteIds]}})
        
    }

	const handleSubmit = e => {
        delete part.values
        e.preventDefault()
		
        if(!props.editing) {
            props.addPart(part)
            props.history.push(`/`)
        } else {
            props.updatePart(props.editPart.id, part)
            props.history.push(`/part/${props.editPart.id}`)
            window.location.reload()
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
                {part.location.map((location, index) => {
                return (<div key={index} class="form-group">
                    <label htmlFor="name">Location:</label>
                    <input class="form-control" name="name" type="text" placeholder="Location..." onChange={event => handleArrayInputs(index, event)} value={location.name} />
                    <button onClick={(e) => addNewLocation(e)}>+</button>
                    <button onClick={(e) => removeLocation(e, index)}>-</button>
                </div>)
                })}
                {part.manufacturer.map((manufacturer, index) => {
                return (<div key={index} class="form-group">
                    <label htmlFor="name">Manufacturer:</label>
                    <input class="form-control" name="name" type="text" placeholder="Manufacturer..." onChange={event => handleArrayInputs(index, event)} value={manufacturer.name}/>
                    <button onClick={(e) => addNewManufacturer(e)}>+</button>
                    <button onClick={(e) => removeManufacturer(e, index)}>-</button>
                </div>)
                })}
                {part.TypeFields.map((typefield, index) => {
                    return (
                        <div key={index} class="form-group">
                            <label htmlFor="name">Field Name:</label>
                            <input class="form-control" name="name" type="text" placeholder="Field Name..." onChange={event => handleArrayInputs(index, event)} value={typefield.name}/>
                            <input class="form-control" name="fields" ref={fieldConn} type="hidden" value={`char${index+1}`} />
                            <input class="form-control" name={`char${index+1}`} type="text" placeholder="Field Data..." onChange={handleChange} value={part["char"+(index+1)]} />
                            <button onClick={(e) => addNewTypeField(e)}>+</button>
                            <button onClick={(e) => removeTypeField(e, index)}>-</button>
                        </div>
                    )
                })}
                <br />
                <button type="submit" class="btn btn-primary" onClick={handleSubmit}>Submit</button>
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