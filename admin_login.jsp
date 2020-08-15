
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
%></br>
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

<div class="row">
    <div class="col-sm-4">
         <form method="post" onsubmit="return validation()" action="admin.jsp">
            <div align="center">
			<img src='content/logopng.png' style="width:100px;height:auto;" />
			</div>
            <div alight="left">
                  <label class="form-label"> User Name</label>  
                  <input type="text" class="form-control" name="cemail" id="cemail" required autocomplete="off">
				  <span id="username" class="text-danger font-weight-bold"></span>
              </div>
              <div alight="left">
                <label class="form-label">Password</label>  
                <input type="password" class="form-control" name="cpass" id="cpass" required autocomplete="off">
              </div></br>
              
              <div align="center">
                <input type="submit" id="submit" value="login" name="login" class="btn-info">
                <input type="reset" id="reset" value="reset" name="reset" class="btn-warning">
              </div>

              </form></br></br>
              </div>
</div>
				<script>
				
                function validation(){
					var user = document.getElementById('cemail').value;
					if(user != "admin@embrave.com")
					{document.getElementById('username').innerHTML="Enter Admin ID";
					return false;
					}
				}
                </script>

</body>
</html>
