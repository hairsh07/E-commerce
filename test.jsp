<html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="bootstrap/css/bootstrap.css" rel='stylesheet' type="text/css" />
    <link href="bootstrap/css/bootstrap.min.css" rel='stylesheet' type="text/css" />
    <style>
    h1 {
        color:white;
        margin-left:500px;
      }
      body
      {
	   background-size: cover;
	   color: white;
	   background: rgba(255,69,0,0.4);
     }
    </style>
    <title>Document</title>
</head>
<body>

<%@ page import="java.sql.*" %>
<%
String name=request.getParameter("cname");
String email=request.getParameter("cemail");
String num=request.getParameter("cnum");
String ads=request.getParameter("cads");
String state=request.getParameter("cstate");
String city=request.getParameter("ccity");
String pin=request.getParameter("cpin");
String sku=request.getParameter("sku");
String qty=request.getParameter("qty");
String size=request.getParameter("csize");

try{
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:orcl","c##shop","orcl");
	PreparedStatement ps = conn.prepareStatement("insert into order1 values(?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,num);
    ps.setString(3,email);
    ps.setString(4,ads);
    ps.setString(5,state);
    ps.setString(6,city);
    ps.setString(7,pin);
    ps.setString(8,sku);
    ps.setString(9,qty);
    ps.setString(10,size);
	int x=ps.executeUpdate();
	if(x!=0){

	%>
	<script>
	alert("THANK YOU /n Order Recieved");
    window.location.replace("men-tee-1.html");
    </script>
	<%
    }
	else{
	out.print("Something went Wrong");
	}
	
}

catch(Exception e){
out.println(e);
}

%>
</body>
</html>