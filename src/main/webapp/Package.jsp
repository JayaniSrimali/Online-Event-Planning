<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <style>
      body {
            background-image: url('https://th.bing.com/th/id/R.2631cd03e9aa90a5b21f503a9d1a4ab5?rik=5hSA%2bEJIgq8l2Q&riu=http%3a%2f%2fblog.visme.co%2fwp-content%2fuploads%2f2017%2f07%2f50-Beautiful-and-Minimalist-Presentation-Backgrounds-08.jpg&ehk=cz1lPAgbuI9XFOeDqk6oAIKc86G0pgD%2fEaSOMhfMczY%3d&risl=&pid=ImgRaw&r=0'); 
            background-size: cover; 
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .package-form {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 300px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            cursor: pointer;
        }
    </style>
</head>
<body>
     <div class="package-form">
        <h2>Enter Package Details</h2>
        <form action = "insert" method = "post">
            
            <div class="form-group">
                <label for="packageID">Package ID:</label>
                <input type="text" id="packageID" name="packageID" required>
            </div>
            <div class="form-group">
                
                <label for="category">Shoot Category:</label>
            <select id="category" name="category">
                <option value="birthday">Birthday Shoot</option>
                <option value="bride">Bride To Be Shoot</option>
                <option value="wedding">Wedding Shoot</option>
                <option value="graduation">Graduation  Shoot</option>
                <option value="other">Other</option>
            </select>
            </div>
            <div class="form-group">
                <label for="packageName">Package Name:</label>
                <input type="text" id="packageName" name="packageName" required>
            </div>

            <div class="form-group">
                <label for="packageDescription">Package Description:</label>
                <input type="text" id="packageDescription" name="packageDescription" required>
            </div>
            <div class="form-group">
                <label for="packagePrice">Package Price:</label>
                <input type="number" id="packagePrice" name="packagePrice" required>
            </div>
            
            <button onclick="myFunction()"  class="btn Submit">Submit</button>

            <script>
             function myFunction() {
               var txt;
               if (confirm("Are you sure?")) {
                  alert(" Submit Successfully!");
               } else {
                 alert("Error!");
               }
             }
             </script>
        </form>
    </div>
   

</body>
</html>