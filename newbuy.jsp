
<html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
  <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
  <link href="style.css" rel="stylesheet" type="text/css"/>
    <style>
    h1 { margin-left: 500px;
        color:black;  
      }
   
    </style>
    <title>Document</title>
</head>
<body>
<%
String sku=request.getParameter("sku");
             
%>



  <h1>Login</h1>  </br>
<div class="row">
    <div class="col-sm-4">
         <form method="post" action="cart.jsp">
			<div align="center">
			<img src='content/logopng.png' style="width:100px;height:auto;" />
			</div>
            
            <div alight="left">
                  <label class="form-label"> User Name</label>  
                  <input type="text" class="form-control" name="cemail" id="cemail" required autocomplete="off">
              </div>
              <div alight="left">
                <label class="form-label">Password</label>  
                <input type="password" class="form-control" name="cpass" id="cpass" required autocomplete="off">
              </div></br>
			  <div alight="left">
                <input type="hidden" class="form-control" name="csku" id="csku" value=<%=sku%> >
              </div></br>
              
              <div align="center">
                <input type="submit" id="submit" value="login" name="login" class="btn-info">
                <input type="reset" id="reset" value="reset" name="reset" class="btn-warning">
              </div>

              </form></br></br>
              </div>
</div>


</body>
</html>
