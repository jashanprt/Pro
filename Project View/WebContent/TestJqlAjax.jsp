<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Form</title>
<link rel="stylesheet" href="css/style.css">

</head>

<body>

	<div class="login-page">
		<div class="form">
			<form class="register-form">
				<input type="text" placeholder="name" /> 
				<input type="password"	placeholder="password" /> 
					<input type="text"	placeholder="email address" />
				<button>create</button>
				<p class="message">Already registered? <a href="#">Sign In</a>
				</p>
			</form>
			<form class="login-form">
					<p id="loginRes">Please Enter Your Username and Passwords</p>
					<div id="Res"></div>
					
					<input type="text" placeholder="username" id="user"/> 
					<input type="password"	placeholder="password" id="pass"/>
					<button id="Sub">login</button>
					<p class="message">Not registered?
					<a href="#">Create an account</a>
				</p>
			</form>
		</div>
	</div>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

	<script src="js/index.js"></script>

	<script>
	//var dat;
    $('#Sub').click(function(){ 
        alert('ajax');
        var queryString="username="+document.getElementById("user").value+"&password="+document.getElementById("pass").value;
         $.ajax({ 
             type: "POST",
            // dataType: "xml",
             dataType: "text",
             data: queryString,
             url: "http://localhost:8080/Project_View/validate",
             success: function(data){        
             //   alert(data);
            	 document.getElementById("loginRes").innerHTML = data;
            	 //console.log(data);
            	//  alert(data);        
            	  $('#loginRes').text(data);
            	  $("#Res").text(responseText); 
            	  $("#loginRes").load(data);
             }
         });
    });
    </script>


</body>
</html>
