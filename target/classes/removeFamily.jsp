<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Remove Family</title>
<style>

body{
	height:100vh;
	background-image: url("img/pat23.jpg");
}

li{
	text-align:center;
	font-size:1.1rem;
}

li:hover{
	background:#555;
}

/* ID */

#co, #co_co, #addId{
	margin:12%;
	margin-top:7%;
	background:white;
}

#okay{
	display:flex;
	justify-content:center;
	padding:5px;
	border:1px solid black;
}

#risky{
	margin:20px;
}

#kd{
	margin-bottom:1rem;
}

</style>
</head>
<body>
<%
	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
	if(session.getAttribute("name")==null)
	{
		response.sendRedirect("adminLogin.jsp");
	}
%>

<div class="navbar-header"> 
	<nav class="navbar navbar-dark bg-dark">
		<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#IPO">
			<span class="navbar-toggler-icon"></span>
		</button>
		<a class="btn btn-primary" href="Logout" role="button">LOGOUT</a>
		<div class="collapse navbar-collapse" id="IPO">
		<ul class="navbar-nav">
			<div class="dropdown-divider"></div>
			<li class="navbar-item active">
				<a class="nav-link" href="manage.jsp">Manage Families</a>
			</li>
			<div class="dropdown-divider"></div>
			<li class="navbar-item">
				<a class="nav-link" href="#">Inward payment</a>
			</li>
			<div class="dropdown-divider"></div>
			<li class="navbar-item">
				<a class="nav-link" href="#">Payment history</a>
			</li>
		</ul>
	</div>
	</nav>
</div>  
<div class="container-fluid"> 
	<div id="co">
		<span id="okay">DELETION</span>
		<form id="risky" action="FamilyRemoval" method="post">
			<div class="form-group">
				<label for="ids">ID</label>
				<input type="text" class="form-control" id="ApartmentID" name="apt_id" placeholder="use 'comma' for multiple removal" required>
			</div>
			<button type="submit" class="btn btn-primary" id="kd">Submit</button>
		</form> 
	</div>
</div>
</body>
</html>