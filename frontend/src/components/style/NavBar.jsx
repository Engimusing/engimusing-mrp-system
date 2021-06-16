import React from 'react'

export default function NavBar() {
    return (
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  
  <a class="navbar-brand" href="/mrp/">MRP</a>
<ul class="navbar-nav">
    
<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Parts
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="/mrp/type/create/">Create Type</a>
	<a class="dropdown-item" href="/mrp/type/quick_create/">Quick Create Type</a>
<a class="dropdown-item" href="/mrp/">List</a>
<a class="dropdown-item" href="/mrp/digikey/enter/">Part Lookup</a>

      </div>
    </li>
     
     
<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Product</a>
      <div class="dropdown-menu">
<a class="dropdown-item" href="/mrp/product/">List</a>
        <a class="dropdown-item" href="/mrp/product/create/">Create Product</a>
      </div>
    </li>
     
  
<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">MO</a>
      <div class="dropdown-menu">
<a class="dropdown-item" href="/mrp/mo/">List Manufacturing Order's</a>
        <a class="dropdown-item" href="/mrp/mo/create/">Create Manufacturing Order</a>
      </div>
    </li>
       
  
<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">PO</a>
      <div class="dropdown-menu">
<a class="dropdown-item" href="/mrp/purchase_order/">List Purchase Order's</a>
        <a class="dropdown-item" href="/mrp/purchase_order/create/">Create Purchase Order</a>
      </div>
    </li>
     
    
<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown"> Vendors </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="/mrp/vendor/create/">Create Vendor</a>
<a class="dropdown-item" href="/mrp/vendor/">Vendor List</a>
      </div>
    </li>
     
     
<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Locations</a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="/mrp/location/create/">Create Location</a>
<a class="dropdown-item" href="/mrp/location/">Location List</a>
      </div>
    </li>
         
     
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Digikey
        </a>
        <div class="dropdown-menu">
            <a class="dropdown-item" href="/mrp/tokens/">View Digikeys</a>
            <a class="dropdown-item" href="/mrp/tokens/enter/">Edit Digikeys</a>
        </div>
    </li>
     

    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Management
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="/admin/">Admin</a>

      </div>
    </li>


</ul>

<ul class="navbar-nav ml-auto">

<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
       Megan
      </a>
      <div class="dropdown-menu dropdown-menu-right">
        <a class="dropdown-item" href="/timepiece/user/settings/">Settings</a>
            <a class="dropdown-item" href="/accounts/password-change/">Change Password</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="/accounts/logout/">Log out</a>
      </div>
    </li>
  </ul>

</nav>
    )
}
