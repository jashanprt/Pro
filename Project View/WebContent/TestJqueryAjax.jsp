<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

</head>

<body>

	<div class="login-page">
		<div class="form">
			<form class="register-form">
				<input type="text" placeholder="name" /> 
				<input type="password"	placeholder="password" /> 
					<input type="text"	placeholder="email address" />
				<button>create</button>
				<p class="message">
					Already registered? <a href="#">Sign In</a>
				</p>
			</form>
			<form class="login-form">
				<p id="loginRes"></p>
					<input type="text" placeholder="username" id="user"/> 
					<input type="password"	placeholder="password" id="pass"/>
					<button onclick="processLogin()">login</button>
					<p class="message">
					Not registered? 
					<a href="#">Create an account</a>
				</p>
			</form>
		</div>
	</div>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

	<script src="js/index.js"></script>

	<script>
    function processLogin()
    {
    //	 var queryString="username="+document.getElementById("user").value+"&password="+document.getElementById("pass").value;
    var queryString="username=admin&password=admin";
	  	 var ajx=new XMLHttpRequest();
  	  	 ajx.onreadystatechange= process();
  	  	 
  		  ajx.open("POST","http://localhost:8080/Project_View/validate","false");
  		  console.log(queryString);
  		  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  		  ajx.send(queryString);
  		  ajx.preventDefault();
    }
    function process()
    {
    	{
    		if(ajx.readyState==4&&ajx.status==200)
    		{
    			document.getElementById("loginRes").innerHTML = xhttp.responseText;
    		}
  		  }
    }
    </script>


</body>
</html>
