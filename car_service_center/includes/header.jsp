<html>
<head>
<title>Car Service Center</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="css/jquery-ui.css">
<script src="js/jquery-1.10.2.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/jquery.validate.js"></script>
<style>
.ui-datepicker {
	font-family: "Trebuchet MS", "Helvetica", "Arial",  "Verdana", "sans-serif";
	font-size: 12px;
}
.ui-datepicker select.ui-datepicker-month, .ui-datepicker select.ui-datepicker-year {
	float:left;
}
</style>
<script>
jQuery('document').ready(function() {
	jQuery("#Form").validate();
});
</script>
</head>
<body id="top">
<div class="wrapper row0">
  <div id="topbar" class="clear"> 
    <nav>
      <ul>
		<% if(session.getAttribute("login_id")!=null) { %>
		<li>Welcome <% out.print(session.getAttribute("login_name")); %></li>
        <li><a href="model/login.jsp?act=logout">Logout</a></li>
		<% } else { %>
		    <li><a href="index.jsp">Home</a></li>
        <li><a href="about-us.jsp">About Us</a></li>
        <li><a href="contact-us.jsp">Contact Us</a></li>
        <li><a href="customer-login.jsp">Customer Login</a></li>
        <li><a href="login.jsp?title=Adminstrator">Admin Login</a></li>
		<% } %>
      </ul>
    </nav>
  </div>
</div>
<div class="wrapper row1">
  <header id="header" class="clear"> 
    <div id="logo" class="fl_left">
       <div style="float:left; margin-top:-11px;"><h1 style="font-size:36px;"><a href="index.jsp">Car Service Center</a></h1>
        <p style="color:#ffffff">A one stop solution for all brand car service</p>
      </div>
    </div>
    <div class="fl_right">
      <form class="clear" method="post" action="#">
        <fieldset>
          <legend>Search:</legend>
          <input type="text" value="" placeholder="Search Here">
          <button class="fa fa-search" type="submit" title="Search"><em>Search</em></button>
        </fieldset>
      </form>
    </div>
  </header>
</div>
<div class="wrapper row2">
  <div class="rounded">
    <nav id="mainav" class="clear"> 
      <ul class="clear">
        <li class="active"><a href="index.jsp">Home</a></li>
        <!-- Menu System for Super Admin Login -->
        <% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("1")) { %>
        <li><a href="login-home.jsp">Dashboard</a></li>
        <li><a href="product.jsp?product_id=0">Package Management</a></li>
        <li><a href="#" class="drop" >Reports</a>
          <ul>
              <li><a href="report-product.jsp?type_id=0">All Package Reports</a></li>
              <li><a href="report-customer.jsp">Customer Report</a></li>
              <li><a href="report-order.jsp?customer_id=0">All Order Report</a></li>
            </ul>
        </li>
        <li><a href="change-password.jsp">Change Password</a></li>
        <li><a href="model/login.jsp?act=logout">Logout</a></li>
		<% } %>
		<!-- End of the Super Admin Menu Section -->
		
		<!-- Menu System for Customer Login -->
		<% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("4")) { %>	
      <li><a href="login-home.jsp">Dashboard</a></li>
      <li><a href="list-product.jsp?type_id=0">All Package</a></li>	
      <li><a href="report-order.jsp?customer_id=<%=session.getAttribute("customer_id")%>">My Packages</a></li>
      <li><a href="customer.jsp?customer_id=<%=session.getAttribute("customer_id")%>">My Account</a></li>
      <li><a href="contact-us.jsp">Contact Us</a></li>
      <li><a href="model/customer.jsp?act=logout">Logout</a></li>
		<% } %>
		<!-- End of Employee Menu Section -->
		
		<% if(session.getAttribute("login_level") == null) { %>
			<li><a href="about-us.jsp">About Project</a></li>
      <li><a href="list-product.jsp?type_id=0">All Package</a></li>
      <li><a href="#" class="drop" >Login</a>
        <ul>
          <li><a href="customer-login.jsp">Customer Login</a></li>
          <li><a href="login.jsp?title=Adminstrator">Admin Login</a></li>
        </ul>
      </li>
      <li><a href="customer.jsp?customer_id=0">Register</a></li>
	    <li><a href="contact-us.jsp">Contact Us</a></li>
		<% } %>
      </ul>
    </nav>
  </div>
</div>
