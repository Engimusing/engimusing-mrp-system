import {RETRIEVE_PARTS, ADD_PART_START, ADD_PART_SUCCESS, ADD_PART_FAILURE, UPDATE_PART_START, UPDATE_PART_SUCCESS, UPDATE_PART_FAILURE, SEARCH_START, SEARCH_SUCCESS, SEARCH_FAILURE} from "../actions/constants"

const initialState = {
    parts: [],
    filteredParts: [],
    addingPart: false,
    editingPart: false,
    deletingPart: false,
    searching: false,
    error: "",
    updatingPart: {
        "id": "",
        "partType": "",
		"description": "",
        "engimusing_part_number": "",
        "location": "",
        "manufacturer": "",
    }
}

export const reducer = (state = initialState, action) => {
    switch (action.type) {
        default:
            return state;
        case RETRIEVE_PARTS:
            return {
                ...state,
                parts: action.payload,
                filteredParts: action.payload
            }

        case ADD_PART_START:
            return {
                ...state,
                addingPart: true
            }
        case ADD_PART_SUCCESS:
            return {
                ...state,
                parts: [...state.parts, action.payload],
                addingPart: false
            }
        case ADD_PART_FAILURE:
            return {
                ...state,
                error: action.payload,
                addingPart: false
            }
        case UPDATE_PART_START:
            return {
                ...state,
                editingPart: true,
                updatingPart: action.payload
            }
        case UPDATE_PART_SUCCESS:
            return {
                ...state,
                parts: state.parts.map(part => part.id === action.payload.id ? action.payload : part),
                filteredParts: state.parts.map(part =>
					part.id === action.payload.id ? action.payload : part,
				),
                editingPart: false
            }
        case UPDATE_PART_FAILURE:
            return {
                ...state,
                error: action.payload,
                editingPart: false
            }
        case SEARCH_START:
            return {
                ...state,
                searching: true
            }
        case SEARCH_SUCCESS:
            return {
                ...state,
                parts: [...state.parts],
                filteredParts: state.parts.filter(part => part.partType.toLowerCase().includes(action.payload) || part.description.toLowerCase().includes(action.payload)),
                searching: false
            }
        case SEARCH_FAILURE:
            return {
                ...state,
                error: action.payload,
                searching: false
            }
    }
}