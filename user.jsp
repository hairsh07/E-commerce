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
</br></br>
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
	</br></br>
<div class="mynew">
    <div class="panel-body">
    <table id="tb1-order" class="table table-responsive table-bordered" cellpadding ="0" width="100%">
		<thead>
		<tr color: black;>
			<th color: black;>Name</th>
			<th color: black;>Email</th>
			<th color: black;>Contact</th>
			<th color: black;>Address</th>
			<th color: black;>State</th>
			<th color: black;>City</th>
			<th color: black;>Pin</th>
			
		</tr>
		<%

         try
         {
             Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:orcl","c##newdb","orcl");
             PreparedStatement ps;
             ps=conn.prepareStatement("Select name,email,contact,address,state,city,pin from user1");
             ResultSet rs=ps.executeQuery();

             while(rs.next())
              {
              
        %>
		<tr  color: black;>
			<td color: black;><%=rs.getString("name") %></td>
			<td color: black;><%=rs.getString("email") %></td>
			<td color: black;><%=rs.getString("contact") %></td>
			<td color: black;><%=rs.getString("address") %></td>
			<td color: black;><%=rs.getString("state") %></td>
			<td color: black;><%=rs.getString("city") %></td>
			<td color: black;><%=rs.getString("pin") %></td>
			
		</tr>
                
		 <% }
			}
            catch(Exception e)
            {
                out.println(e);
            }

        %>


</table>
      </div>
    </div>
</body>
</html>