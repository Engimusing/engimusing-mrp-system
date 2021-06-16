import React, { useState } from "react";
import { connect, useDispatch } from "react-redux";
import { SEARCH_START, SEARCH_SUCCESS, SEARCH_FAILURE } from "../actions/constants";

const Search = props => {
	const dispatch = useDispatch();
	const [searchTerm, setSearchTerm] = useState({
		searchTerm: "",
	});

	const handleChange = e => {
		setSearchTerm({ [e.target.name]: e.target.value });
		props.filteredParts.filter(part => {
            dispatch({type: SEARCH_START})
			const filter = e.target.value.toLowerCase();
			part.partType.toLowerCase().includes(filter) || part.description.toLowerCase().includes(filter);
			dispatch({ type: SEARCH_SUCCESS, payload: filter });
		});
	};

	const handleSubmit = e => {
		e.preventDefault();
	};

	return (
		<form onSubmit={handleSubmit}>
				<label htmlFor="searchTerm">Search:</label>
				<input
					type="text"
					onChange={e => handleChange(e)}
					value={searchTerm.searchTerm}
					name="searchTerm"
					placeholder="Search..."
				/>
				<button type="submit">Search</button>
		</form>
	);
};

const mapStateToProps = state => {
	return {
		filteredParts: state.filteredParts,
	};
};

export default connect(
	mapStateToProps,
	{},
)(Search);