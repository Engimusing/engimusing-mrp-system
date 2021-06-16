import axios from 'axios';
import Cookie from 'js-cookie'


export const axiosWithAuth = () => {
    return axios.create({
        headers: {
            'X-CSRFToken': Cookie.get('csrftoken')
        },
        withCredentials: true,
        baseURL: 'http://localhost:8000/mrp/api/'
    })
}