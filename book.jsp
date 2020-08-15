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

String bemail=request.getParameter("cemail");
String bsku=request.getParameter("csku");
String bqty=request.getParameter("cqty");
String bsize=request.getParameter("csize");
String orderid=request.getParameter("orderid");


try{
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:orcl","c##newdb","orcl");
	PreparedStatement ps = conn.prepareStatement("insert into order10 values(orderid.nextval,?,?,?,?)");
	ps.setString(1,bemail);
	ps.setString(2,bsku);
    ps.setString(3,bqty);
    ps.setString(4,bsize);
	int x=ps.executeUpdate();
	if(x!=0){
	%>
	<script>
	alert("THANK YOU , Order Recieved");
    window.location.replace("homepage.html");
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