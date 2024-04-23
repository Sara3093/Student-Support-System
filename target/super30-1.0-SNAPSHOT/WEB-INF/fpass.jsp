<%-- 
    Document   : fpass
    Created on : 16-Mar-2023, 4:12:15 pm
    Author     : shruti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500&display=swap" rel="stylesheet">
    <title>Student Support System</title>
</head>
<body>
    <section style="background:rgba(0, 0, 0, 0.4) url(https://images.static-collegedunia.com/public/college_data/images/campusimage/1567662778accad.png); background-size: cover; background-blend-mode: darken; height: 100vh; position: relative; display: flex; justify-content: center; align-items: center;text-align: center;" class="change_pass">
        <form style="border: 2px solid black; background-color: whitesmoke;width:max-content; padding: 80px 60px 60px 60px; border-radius: 20px; ">
            <div  class="details_form">
                <div class="form-group">
                    <label style="font-size: 18px;font-weight: 500;" for="username">Enter Your Username</label>
                    <br>
                    <input style="font-size: 15px; padding: 5px;" type="text" id="username" required>
                </div>
                <br>
                <br>
                <div class="form-group">
                    <label style="font-size: 18px;font-weight: 500;" for="otp">Enter OTP</label>
                    <br>
                    <input style="font-size: 15px; padding: 5px;" type="text" id="otp" inputmode="numeric" autocomplete="one-time-code" pattern="\d{6}" required>
                </div>
                <br>
                <br>
                <div class="form-group">
                    <label style="font-size: 18px;font-weight: 500;" for="n_password">New Password</label>
                    <br>
                    <input style="font-size: 15px; padding: 5px;" type="password" id="n_password" required>
                </div>
                <br>
                <br>
                <div class="form-group">
                    <label style="font-size: 18px;font-weight: 500;" for="c_password">Confirm Password</label>
                    <br>
                    <input style="font-size: 15px; padding: 5px;" type="password" id="c_password" required>
                </div>
                <div class="submit">
                    <button style="margin-top: 50px; padding: 6px 50px; font-size: 18px;font-weight: 700;border-radius: 5px;cursor: pointer;text-align: center;"class="confirm_button">Confirm</button>
                </div>
            </div>
        </form>
    </section>
</body>
</html>

