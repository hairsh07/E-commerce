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
String pass=request.getParameter("cpass");
String conpass=request.getParameter("crepass");

if(pass.equals(conpass))
{
try{
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:orcl","c##newdb","orcl");
    PreparedStatement ps;
    ps=conn.prepareStatement("select name from user1 where email=?");
    ps.setString(1,email);
    ResultSet rs=ps.executeQuery();
    while(rs.next())
        { String tem=rs.getString("name");}
        int y=ps.executeUpdate();
    if(y==0)
    {
    
    
    ps = conn.prepareStatement("insert into user1 values(?,?,?,?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,email);
    ps.setString(3,num);
    ps.setString(4,ads);
    ps.setString(5,state);
    ps.setString(6,city);
    ps.setString(7,pin);
    ps.setString(8,pass);
	int x=ps.executeUpdate();
	if(x!=0){

	%>
	<script>
	alert("Account Created");
    window.location.replace("homepage.html");
    </script>
	<%
    }
	else{
        %>
        <script>
        alert("something went wrong");
        </script>
        <%}
    }
    
    else
    {
        %>
        <script>
        alert("User already Exist");
        window.location.replace("homepage.html");
        </script>
        <%
    

    }
	
}

catch(Exception e)
{
out.println(e);
}
}
else
{
out.print("Password mismatch");
}

%>
</body>
</html>