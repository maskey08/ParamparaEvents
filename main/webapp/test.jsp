<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <title>Auth Page</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background: #f0f0f0;
      margin: 0;
      padding: 0;
      overflow: hidden;
    }

    .container {
      width: 900px;
      max-width: 100%;
      height: 620px;
      margin: 40px auto;
      position: relative;
      overflow: hidden;
      border-radius: 20px;
      box-shadow: 0 0 30px rgba(0, 0, 0, 0.2);
    }

    .form-container {
      width: 200%;
      display: flex;
      transition: transform 0.5s ease-in-out;
    }

    .form-panel {
      width: 50%;
      padding: 40px;
      background: white;
    }

    .form-panel h2 {
      margin-bottom: 20px;
      color: #C1050B;
    }

    .input-group {
      margin-bottom: 15px;
      position: relative;
    }

    .input-group input,
    .input-group select {
      width: 100%;
      padding: 12px;
      border-radius: 8px;
      border: 1px solid #ccc;
    }

    .input-group i {
      position: absolute;
      top: 12px;
      right: 10px;
      color: #999;
    }

    .button {
      background: #C1050B;
      color: #fff;
      border: none;
      padding: 12px;
      width: 100%;
      border-radius: 8px;
      font-weight: bold;
      cursor: pointer;
    }

    .switch-buttons {
      text-align: center;
      margin-bottom: 20px;
      padding-top: 15px;
      background-color: #fff;
      border-bottom: 1px solid #ddd;
    }

    .switch-buttons button {
      margin: 0 10px;
      padding: 10px 20px;
      font-weight: bold;
      border-radius: 5px;
      border: none;
      background-color: #C1050B;
      color: #fff;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    .switch-buttons button:hover {
      background-color: #a00408;
    }
  </style>
</head>
<body>

  <div class="container">
    <!-- Toggle Buttons -->
    <div class="switch-buttons">
      <button onclick="showLogin()">Login</button>
      <button onclick="showRegister()">Register</button>
    </div>

    <!-- Forms Wrapper -->
    <div class="form-container" id="formContainer">
      <!-- Login Form -->
      <div class="form-panel">
        <h2>Login</h2>
        <form action="${pageContext.request.contextPath}/login" method="post">
          <div class="input-group">
            <input type="text" name="username" placeholder="Username" required>
            <i class="fas fa-user"></i>
          </div>
          <div class="input-group">
            <input type="password" name="password" placeholder="Password" required>
            <i class="fas fa-lock"></i>
          </div>
          <button type="submit" class="button">Login</button>
        </form>
      </div>

      <!-- Registration Form -->
      <div class="form-panel">
        <h2>Register</h2>
        <form action="${pageContext.request.contextPath}/register" method="post" enctype="multipart/form-data">
          <div class="input-group">
            <input type="text" name="firstName" placeholder="First Name" required>
          </div>
          <div class="input-group">
            <input type="text" name="lastName" placeholder="Last Name" required>
          </div>
          <div class="input-group">
            <input type="text" name="username" placeholder="Username" required>
          </div>
          <div class="input-group">
            <input type="date" name="birthday" required>
          </div>
          <div class="input-group">
            <select name="gender" required>
              <option value="">Gender</option>
              <option value="Male">Male</option>
              <option value="Female">Female</option>
              <option value="Other">Other</option>
            </select>
          </div>
          <div class="input-group">
            <input type="email" name="email" placeholder="Email" required>
          </div>
          <div class="input-group">
            <input type="text" name="phone" placeholder="Phone Number" required>
          </div>
          <div class="input-group">
            <input type="text" name="subject" placeholder="Subject" required>
          </div>
          <div class="input-group">
            <input type="password" name="password" placeholder="Password" required>
          </div>
          <div class="input-group">
            <input type="password" name="cpassword" placeholder="Confirm Password" required>
          </div>
          <div class="input-group">
            <input type="file" name="image">
          </div>
          <button type="submit" class="button">Register</button>
        </form>
      </div>
    </div>
  </div>

  <script>
    function showLogin() {
      document.getElementById('formContainer').style.transform = 'translateX(0)';
    }

    function showRegister() {
      document.getElementById('formContainer').style.transform = 'translateX(-50%)';
    }
  </script>

</body>
</html>
