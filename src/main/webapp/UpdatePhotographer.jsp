<%@page import="com.Photographer.Photographer"%>
<%@page import="java.util.List"%>
<%@page import="com.Photographer.PhotographerDBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
    
     
        body {
            background-image: url("https://th.bing.com/th/id/R.2631cd03e9aa90a5b21f503a9d1a4ab5?rik=5hSA%2bEJIgq8l2Q&riu=http%3a%2f%2fblog.visme.co%2fwp-content%2fuploads%2f2017%2f07%2f50-Beautiful-and-Minimalist-Presentation-Backgrounds-08.jpg&ehk=cz1lPAgbuI9XFOeDqk6oAIKc86G0pgD%2fEaSOMhfMczY%3d&risl=&pid=ImgRaw&r=0");
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0; 
            background-size: cover;
            background-position: center;
        

        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: blur;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
        }

        form {
            display: grid;
            grid-gap: 20px;
        }

        label {
            font-weight: bold;
        }

        input,
        textarea {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #2e63a9;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color:  #260b7c;
        }

        /* Popup container */
        .popup-container {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
            z-index: 1;
        }

        /* Popup content */
        .popup-content {
            background :#fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .close-btn {
            background-color: #ccc;
            color: #333;
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-right: 10px;
        }

        .close-btn:hover {
            background-color: #999;
        }
    </style>
<body>

    <%
       String  ID = request.getParameter("ID");
       String  Name = request.getParameter("Name");
       String  Address = request.getParameter("Address");
       String  NIC = request.getParameter("NIC");
       String  Dateofbirthday = request.getParameter("Dateofbirthday");
       String  Gender = request.getParameter("Gender");
       String  Email = request.getParameter("Email");
       String  ContactNumber= request.getParameter("ContactNumber");
       String  UserNameP = request.getParameter("UserNameP");
       String  PasswordP = request.getParameter("PasswordP");
    %>
    
    <%
         
		int uID = (int) request.getSession().getAttribute("userid");
		Photographer firstUser= PhotographerDBUtil.getCustomer(uID);
		//User currentUser = user.get(0);
		%>
    
    <div class="container">
        <h2>Edit Profile</h2>
        <form action ="update" method = "post">
        
        
            <label for="ID">Photographer ID:</label>
            <input type="text" id="ID" name="ID"  value = "<%=firstUser.getID()%>" readonly>
            
            
            <label for="Name">Photographer Name:</label>
            <input type="text" id="firstName" name="Name"  value = "<%=firstUser.getName()%>" required>
            
            <label for="Address">Address:</label>
            <input type="text" id="address" name="Address"  value = "<%=firstUser.getAddress()%>"required>

            <label for="NIC">NIC:</label>
            <input type="text" id="nic" name="NIC" value = "<%=firstUser.getNIC()%>" required>
            
            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="dob" value = "<%=firstUser.getDateofbirthday()%>" required>

            <label for="gender">Gender</label>
            <input type="text" id="gender" name="gender" value = "<%=firstUser.getGender()%>" required>
            

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value = "<%=firstUser.getEmail()%>" required>

            <label for="number">Phone Number:</label>
            <input type="text" id="number" name="number" value = "<%=firstUser.getContactNumber()%>" required>
            
            <label for="UserNameP">User Name:</label>
            <input type="text" id="UserNameP" name="UserNameP" value = "<%=firstUser.getUserNameP()%>" required>
            
              <label for="PasswordP">Password:</label>
            <input type="text" id="PasswordP" name="PasswordP" value = "<%=firstUser.getPasswordP()%>" required>

          

            <button type="submit">Save Changes</button>
            
        </form>
    </div>

    

    <script>
        function openResetPopup() {
            document.getElementById('resetPopup').style.display = 'flex';
        }

        function closeResetPopup() {
            document.getElementById('resetPopup').style.display = 'none';
        }
    </script>
</body>
</html>