<%@page import="com.Photographer.Photographer"%>
<%@page import="java.util.List"%>
<%@page import="com.Photographer.PhotographerDBUtil"%>
<%@ page language="Java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
 <style>body{
      margin:0;
      padding:0px;
      font-family: 'popping',sans-serif;
      box-sizing: border-box;
      line-height: 1.5;
      background-image: url("https://th.bing.com/th/id/R.a0578b434cfbb3b92729def704fe9476?rik=F7DHywO86IjXhg&riu=http%3a%2f%2fwww.freeppt.net%2ftemplate%2fteam-work-ppt-template.jpg&ehk=aIW1V63sPD8iPgWSmPNI6IFttUapiACQPTpYawfND8g%3d&risl=&pid=ImgRaw&r=0");
      background-repeat: no-repeat;
      background-attachment: fixed;  
      background-size: cover;
     
    }
    .slide{
      min-height: 80vh;
      width: 100%;
      background-image:  linear-gradient(rgba(4,9,30,0.7),rgba(4,9,30,0.7)),url(download.webp);
      background-position:center;
      background-size:cover;
      position:relative;
      padding: 0 80px;
      display: flex;
      flex-direction: column;
      align-items: flex-start;
      justify-content: center;
    
  
     }
    
      
      .menu1{
        list-style-type: none;
        margin: 0;
        padding: 0;
        overflow: hidden;
        background-color:white;
        display: flex;
         
      }
      .menu1 li {
        display: inline-block;
        margin-right: 5px;
        flex: 1;
      }
      .menu1 li:last-child {
        margin-right: 0; /* Remove right margin from the last item */
      }
      .menu1 li:first-child{
        margin-left: 20px;
      }
      .menu1 li a {
        text-decoration: none;
        color: black;
        padding: 5px 10px;
      }
      
      .menu1 li a:hover {
        background-color: #5780a7;
        color: white;
        border-radius: 3px;
      }
      
      li a {
        float: center;
        display: block;
        color: white;
        text-align: none;
        padding: 5px;
        text-decoration: none;
        
      }
      
      
    .black-line{
        border:none;
        height: 1px;
        background-color: black;
    }  
    .terms{
      background-color:gray;
    }
    .copyrightText{
      text-align: right ;
      background-color:gray ;
      }
    /*read this*/
      
      .info{
          color:lightgrey;
          text-align: left;
      }
  
      *{
        margin:0px;
        padding:0;
        box-sizing: border-box;
      }
  
      html{
        scroll-behavior: smooth;
      }
      .container{
        max-width: 1170px;
        margin:auto;
      }
      .row{
        display: flex;
      }
      ul{
        list-style: none;
      }
  
      
  
      /* NavbarTop */
  .navbar-top {
    background-color:rgba(13, 13, 13, 0.1);
    backdrop-filter:blur(25px) ;
    color:#0f0e12;
    box-shadow: 0px 4px 8px 0px grey;
    height: 70px;
  }
  
  .title {
    font-family: 'Dancing Script', cursive;
    padding-top: 15px;
    position: absolute;
    left: 40%;
  
  }
  
  /* End */
  
  /* Sidenav */
  .sidenav {
    background-color:black;
    color:wheat;
    border-bottom-right-radius: 25px;
    height: 50%;
    left: 0;
    overflow-x: hidden;
    padding-top: 60px;
    position: absolute;
    top: 212px;
    width: 250px;
  }
  
  .profile {
    margin-bottom: 20px;
    margin-top: -12px;
    text-align: center;
  }
  
  .profile img {
    border-radius: 50%;
    box-shadow: 0px 0px 5px 1px grey;
  }
  
  .name {
    font-size: 20px;
    font-weight: bold;
    padding-top: 20px;
  }
  
  .job {
    font-size: 16px;
    font-weight: bold;
    padding-top: 10px;
  }
  /* End */
  
  /* Main */
  .main {
    margin-top: 2%;
    margin-left: 29%;
    font-size: 28px;
    padding: 0 10px;
    width: 58%;
  }
  
  .main h2 {
    color: #333;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-size: 24px;
    margin-bottom: 10px;
  }
  
  .main .card {
    background-color:whitesmoke;
   
    border-radius: 18px;
    box-shadow: 1px 1px 8px 0 darkblue;
    height: auto;
    margin-bottom: 20px;
    padding: 20px 0 20px 50px;
  }
  
  .main .card table {
    border: none;
    font-size: 16px;
    height: 250px;
    width: 90%;
  }
  
  .btn {
    border: none;
    color:whitesmoke;
    padding: 14px 28px;
    font-size: 16px;
    cursor: pointer;
  }
 .Delete {background-color:  rgb(34, 192, 116); 
  color: black; 
  border: 2px solid #0f0e12;}    
   .Delete:hover { background-color:#211789;
    color: white;} 
   

.editProfile {background-color: rgb(34, 192, 116); 
  color: black; 
  border: 2px solid  #0f0e12}    
   .editProfile:hover { background-color: #211789;
    color: white;} 

  
  /* End */
  
  
  
  
    </style>
<body>

       <!-- Navbar top -->
      <div class="navbar-top">
        <div class="title">
         <h1>Photographer profile</h1>
        </div>
    </div>
    <!-- End -->
            <!-- Sidenav -->
    <div class="sidenav">
        <div class="profile">
            <img src="https://thumbs.dreamstime.com/b/businessman-avatar-image-beard-hairstyle-male-profile-vector-illustration-178545831.jpg" alt="" width="150" height="150">
            </div>
            <div class="job">
                    Photographer
            </div>
        </div>
   
      
       
        
    
     
    <!-- Main -->
    <div class="main">
         <%
         
		int ID = (int) request.getSession().getAttribute("userid");
		Photographer firstUser= PhotographerDBUtil.getCustomer(ID);
		//User currentUser = user.get(0);
		%>
          
     
    
     
       <div class="card">
            <div class="card-body">
                
                <table>
                    <tbody>
                        <tr>
                            <td>Photographer ID</td>
                            <td>:</td>
                            <td><%=firstUser.getID()%></td>
                           
                        </tr>
                        <tr>
                            <td>Photographer Name</td>
                            <td>:</td>
                            <td><%=firstUser.getName()%></td>
                        </tr>
                        <tr>
                          <td>Address</td>
                          <td>:</td>
                          <td><%=firstUser.getAddress()%></td>

                            
                      </tr>
                        <tr>
                            <td>NIC</td>
                            <td>:</td>
                            <td><%=firstUser.getNIC()%></td>
                        </tr>
                        <tr>
                          <td>Date of Birth</td>
                          <td>:</td>
                          <td><%=firstUser.getDateofbirthday()%></td>
                        </tr>
                        <tr>
                          <td>Gender</td>
                          <td>:</td>
                          <td><%=firstUser.getGender()%></td>
                      </tr>
                        <tr>
                            <td>Photographer E-mail</td>
                            <td>:</td>
                           <td><%=firstUser.getEmail()%></td>
                        </tr>
                        <tr>
                            <td>Contact Number</td>
                            <td>:</td>
                           <td><%=firstUser.getContactNumber()%></td>
                        </tr>
                        
                         <tr>
                            <td>User Name</td>
                            <td>:</td>
                            <td><%=firstUser.getUserNameP()%></td>
                        </tr>
                       
                        <tr>
                            <td>Password</td>
                            <td>:</td>
                           <td><%=firstUser.getPasswordP()%></td>
                        </tr>
                       
                    </tbody>
                </table>
            </div>
        </div>
         <a href = "DeletePhotographer.jsp">
               <input type ="button" class="btn Delete" name ="Delete Account" value = "Delete Account"  onclick="myFunction()">
       </a>
         <a href = "UpdatePhotographer.jsp">
      
      <input type ="button" class="btn editProfile" name ="Edit Profile" value = "Edit Profile"  onclick="myFunction()">
      </a>
      </div>
   
       <c:url value ="DeletePhotographer.jsp" var ="phdelete">
           <c:param name="ID" value ="<%=String.valueOf(firstUser.getID())%>"/>
          <c:param name="Name" value ="<%=firstUser.getName()%>"/>
          <c:param name="Address" value ="<%=firstUser.getAddress()%>"/>
          <c:param name="NIC" value ="<%=firstUser.getNIC()%>"/>
          <c:param name="Dateofbirthday" value ="<%=firstUser.getDateofbirthday()%>"/>
          <c:param name="Gender" value ="<%=firstUser.getGender()%>"/>
          <c:param name="Email" value ="<%=firstUser.getEmail()%>"/>
          <c:param name="ContactNumber" value ="<%=firstUser.getContactNumber()%>"/>
          <c:param name="UserNameP" value ="<%=firstUser.getUserNameP()%>"/>
          <c:param name="PasswordP" value ="<%=firstUser.getPasswordP()%>"/>
          
       </c:url>
      


       <script>
       function myFunction() {
         var txt;
         if (confirm("Are you sure?")) {
           alert("Successfully Deleted!");
         } else {
           alert("Error!");
         }
       }
       </script>
       
       <c:url value = "UpdatePhotographer.jsp" var = "phupdate">
          <c:param name="ID" value ="<%=String.valueOf(firstUser.getID())%>"/>
          <c:param name="Name" value ="<%=firstUser.getName()%>"/>
          <c:param name="Address" value ="<%=firstUser.getAddress()%>"/>
          <c:param name="NIC" value ="<%=firstUser.getNIC()%>"/>
          <c:param name="Dateofbirthday" value ="<%=firstUser.getDateofbirthday()%>"/>
          <c:param name="Gender" value ="<%=firstUser.getGender()%>"/>
          <c:param name="Email" value ="<%=firstUser.getEmail()%>"/>
          <c:param name="ContactNumber" value ="<%=firstUser.getContactNumber()%>"/>
          <c:param name="UserNameP" value ="<%=firstUser.getUserNameP()%>"/>
          <c:param name="PasswordP" value ="<%=firstUser.getPasswordP()%>"/>
       </c:url>
      

      <script>
        function myFunction() {
          var txt;
          if (confirm("Are you sure?")) {
              alert("Please Wait!");
        } else {
               alert("Error!");
        }
       }
      </script>

     

    
    
     
</body>
</html>