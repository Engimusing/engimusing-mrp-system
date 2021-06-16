import React from 'react'
import NavBar from '../style/NavBar'
import 'bootstrap/dist/css/bootstrap.min.css'

export default function Layout({children}) {
    return (
        <React.Fragment>
        <NavBar />
        <div class="container">
            {children}
            </div>
        </React.Fragment>
    )
}
