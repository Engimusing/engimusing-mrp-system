import React from 'react'
import ListInventory from './components/ListInventory'
import {Route} from 'react-router'
import PartForm from './components/PartForm'
import PartDetails from './components/PartDetails'
import Layout from './components/hocs/Layout.jsx'
import DeleteConfirm from './components/DeleteConfirm'


export default function App() {
    return (
      <Layout>
        <Route exact path="/" component={ListInventory} />
        <Route path="/addPart" component={PartForm} />
        <Route exact path="/part/:id" component={PartDetails} />
        <Route path="/part/:id/edit" component={PartForm} />
        <Route path="/part/:id/delete" component={DeleteConfirm} />
      </Layout>
    )
}
