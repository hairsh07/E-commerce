<html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="bootstrap/css/bootstrap.css" rel='stylesheet' type="text/css" />
    <link href="bootstrap/css/bootstrap.min.css" rel='stylesheet' type="text/css" />
    <link href="style.css" rel="stylesheet" type="text/css"/>
    <style>
    h1 {margin-left: 500px;
        color:black;
        margin-left:500px;
      }
   
    </style>
    <title>Document</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@page import="java.sql.DriverManager.*" %>
<%@page import="java.sql.ResultSet.*" %>
<%@page import="java.sql.Statement.*" %>
<%@page import="java.sql.Connection.*" %>
 </br>
 <div class='head'>
      <div class='logo'>
        <img src="content/logopng.png" width="110" height="45" />
      </div>
      <nav class='option'>
        <ul>
          <li>
            <a href="homepage.html">Home</a>
          </li>
          <li>
            <a>Men</a>
            <ul>
              <li>
                <a>Top Wear</a>
				<ul>
				<li><a href="men-tee.html">T-Shirt</a></li>
				<li><a href="men-shirt.html">Shirt</a></li>
				</ul>
				</li>
              <li>
                <a>Bottom Wear</a>
				<ul>
				    <li><a href="men-jean.html">Jeans</a></li>
					<li><a href="men-trouser.html">Trousers</a></li>
					</ul>
				</li>
              <li>
                <a href="men-acc.html">Mens Accessories</a>
              </li>
            </ul>
          </li>
          <li>
            <a>Women</a>
            <ul>
              <li>
                <a>Top Wear</a>
				<ul>
				<li><a href="women-tops.html">Tops</a></li>
				<li><a href="women-jump.html">Jumpsuit</a></li>
				</ul>
				</li>
              <li>
                <a>Bottom Wear</a>
				<ul>
				<li><a href="women-jean.html">Jeans</a></li>
				<li><a href="women-jegging.html">Jeggings</a></li>
				</ul>
				</li>
              <li>
                <a href="women-acc.html">Women Accessories</a>
              </li>
            </ul>
          </li>
          <li>
            <a>Account</a>
			<ul>
				<li><a href="signup.html">Sign up</a></li>
				<li><a href="admin_login.jsp">Admin</a></li>
				<li><a href="formal.html">Orders</a></li>
				</ul>
          </li>
          <li>
            <a>About Us</a>
          </li>
        </ul>
      </nav>
    </div>
	<div class='admin-main'>
				<div class='admin-option'>
				<a href="orders.jsp"><img src='content/order_image.jpeg' style="width:300px;height:auto;"/></a>
				</div>
				<div class='admin-option'>
				<a href="user.jsp"><img src='content/user_image.jpeg' style="width:300px;height:auto;"/></a>  
				</div>
	</div>
</body>
</html>