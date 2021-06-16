import {RETRIEVE_PARTS, ADD_PART_START, ADD_PART_SUCCESS, ADD_PART_FAILURE, UPDATE_PART_START, UPDATE_PART_SUCCESS, UPDATE_PART_FAILURE, SEARCH_START, SEARCH_SUCCESS, SEARCH_FAILURE} from './constants'
import {axiosWithAuth} from '../utils/axiosWithAuth'


export const addPart = (part) => dispatch => {
	dispatch({ type: ADD_PART_START });
	axiosWithAuth()
		.post("/addPart", part)
		.then(res => {
			dispatch({ type: ADD_PART_SUCCESS, payload: part });
		})
		.catch(err => {
            console.error(err.response)
			dispatch({ type: ADD_PART_FAILURE, payload: err.response });
		});
};

export const updatePart = (id, changes) => dispatch => {
	axiosWithAuth()
		.put(`/updatePart/${id}`, changes)
		.then(res => {
			const newObj = {
				...changes,
				id: id,
			};
			dispatch({ type: UPDATE_PART_SUCCESS, payload: newObj });
		})
		.catch(err => {
			dispatch({ type: UPDATE_PART_FAILURE, payload: err.response });
		});
};