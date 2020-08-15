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
<div class="col-sm-4">
    <div class="panel-body">
    <form method="post" action="book.jsp">
       <%

         try
         {
             String email=request.getParameter("cemail");
             String pass=request.getParameter("cpass");
			 String sku=request.getParameter("csku");

             Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:orcl","c##newdb","orcl123");
             PreparedStatement ps;
             ps=conn.prepareStatement("Select name,email,contact,address,state,city,pin from user1 where email=? AND pass=?");
           
             ps.setString(1,email);
             ps.setString(2,pass);
             ResultSet rs=ps.executeQuery();

             while(rs.next())
              { String rname=rs.getString("name");
                String remail=rs.getString("email");
                String rnum=rs.getString("contact");
                String rads=rs.getString("address");
                String rstate=rs.getString("state");
                String rcity=rs.getString("city");
                String rpin=rs.getString("pin");
        %>
					<div align="center">
					<img src='content/logopng.png' style="width:100px;height:auto;" />
					</div></br>
                    <div alight="left">
                        <label class="form-label"> Name</label>  
                        <input type="text" class="form-control" name="cname" id="cname" required value=<%=rname%> >
                    </div>
                    <div alight="left">
                        <label class="form-label"> Email ID</label>  
                        <input type="text" class="form-control" name="cemail" id="cemail" required value=<%=remail%> >
                    </div>
                    <div alight="left">
                    <label class="form-label"> Contact</label>  
                    <input type="text" class="form-control" name="cnum" id="cnum" required  value=<%=rnum%> >
                    </div>
                    <div alight="left">
                        <label class="form-label"> Address</label>  
                        <input type="text" class="form-control" name="cads" id="cads" required  value=<%=rads%> >
                        </div>
                    <div alight="left">
                            <label class="form-label"> State</label>  
                            <input type="text" class="form-control" name="cstate" id="cstate" required  value=<%=rstate%> >
                            </div>
                    <div alight="left">
                                <label class="form-label"> City</label>  
                                <input type="text" class="form-control" name="ccity" id="ccity" required  value=<%=rcity%> >
                                </div>   
                                <div alight="left">
                                    <label class="form-label"> Pin Code</label>  
                                    <input type="text" class="form-control" name="cpin" id="cpin" required  value=<%=rpin%> >
                                    </div></br>
                                    <div alight="left">
                                        
                                        <input type="hidden" class="form-control" name="csku" id="csku" required value=<%=sku%>>
                                        </div>                                   
                                        <div alight="left">
                                            <label class="form-label">Quantity</label>  
                                            <input type="text" class="form-control" name="cqty" id="cqty" required>
                                            </div>
                                            <div align="left">
                                                <label >Size</label><br> 
                                                <input class="form-label" type="radio" name="csize" id="csize" value="S" checked>S&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input class="form-label" type="radio" name="csize" id="csize"value="M">M &nbsp;&nbsp;&nbsp;&nbsp;
                                                <input class="form-label" type="radio" name="csize" id="csize"value="L">L &nbsp;&nbsp;&nbsp;&nbsp;
                                                <input class="form-label" type="radio" name="csize" id="csize"value="XL">XL &nbsp;&nbsp;&nbsp;&nbsp;
                                              </div>
                                            </br>
											<div alight="left">
                                            <label class="form-label"></label>
											<input class="form-control" type="hidden" name="orderid" id="orderid" required value="orderid.nextval" readonly>
											</div>
                                            <div align="center">
                                                <input type="submit" id="submit" value="submit" name="submit" class="btn-info">
                                              <input type="reset" id="reset" value="reset" name="reset" class="btn-warning">
                                            </div>                       
            <%
               }
               int x=ps.executeUpdate();
               if(x!=0)
               {  %>
                <script>
                alert("Login Successfull");
                </script>
                <%}
            else
            {%>
                <script>
                alert("Wrong Username or ID");
				
                window.location.replace("homepage.html");
                </script>
                <%}
            }
            catch(Exception e)
            {
                out.println(e);
            }

            %>



      </form>
      </div>
    </div>
</body>
</html>