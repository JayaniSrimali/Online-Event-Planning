<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

	<style>
body{
        background-image: url('https://th.bing.com/th/id/R.2631cd03e9aa90a5b21f503a9d1a4ab5?rik=5hSA%2bEJIgq8l2Q&riu=http%3a%2f%2fblog.visme.co%2fwp-content%2fuploads%2f2017%2f07%2f50-Beautiful-and-Minimalist-Presentation-Backgrounds-08.jpg&ehk=cz1lPAgbuI9XFOeDqk6oAIKc86G0pgD%2fEaSOMhfMczY%3d&risl=&pid=ImgRaw&r=0'); 
        background-size: cover; 
        font-family: Arial, sans-serif;
	      
	}
	
form {
         max-width: 300px;
         margin: 0 auto;
         padding: 20px;
         border: 1px solid #ccc;
         border-radius: 5px;
         background-color: #f5f5f5;
         text-align: center;
   
}

 .welcome-container {
            background-color: #007bff;
            color: #fff; 
            text-align: center;
            padding: 10px; 
            border-radius: 5px; 
            margin-bottom: 20px; 
        }

h3 {
    color: black;
    font-size: 24px;
}

input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 10px 0 ;
    margin: 5px 0;
    border: 1px solid #ccc;
    border-radius: 3px;
}

label {
    font-weight: bold;
}

input[type="submit"] {
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 3px;
    cursor: pointer;
    font-weight: bold;
}


input[type="submit"]:hover {
    background-color: #0056b3;
}
	</style>
<body>
     <div class="login-container">
           
        
        <form action = "log" method = "post">
                   <div class="welcome-container">
                   
                               <p class="welcome-message">Welcome To Online Event Planning System.</p>
                   </div>
             <h3>LOGIN</h3>
             UserName <input type ="text" name = "UserNameP" placeholder="Enter your username" required><br>
             Password <input type = "text" name = "PasswordP" placeholder="Enter your password" required><br>
             
             <input type = "submit" name = "submit" value = "Login">
        </form>
        
        
    </div>

    <script src="script.js"></script>
    

</body>
</html>