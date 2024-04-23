<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        *{
        margin: 0px;
        padding: 0px;
        }
        .heading {
        background:rgba(0, 0, 0,0.2) url(https://images.static-collegedunia.com/public/college_data/images/campusimage/1567662778accad.png);
        background-size: cover;
        background-blend-mode: darken;
        height: 100vh;
        position: relative;
        text-align: center;
        background-repeat: no-repeat;
        color:whitesmoke;
        }
        .heading p{
            font-size: 40px;
            background-color: #003366;
            margin-bottom: 5%;
        }
        .session{
            font-size: 30px;
            margin:50px;
        }
        input,option{
            font-size: 20px;
            border: 1px solid black;
            border-radius: 2px;
        }
        #course, #div{
            font-size: 20px;
            border: 1px solid black;
            border-radius: 2px;
        }
    </style>
    <body>
        <h1 class="heading">
            <p>Add New Session</p>
            <form  action="displayform20" method="post">
                 <div class="session">
                        <label>Enter Date</label>
                        <input type="date" name="k">
                        <br><br>
                        <label for="courses">Choose a course:</label>

<select name="course" id="course">
    <option value="" selected disabled>Select Course</option>
  <option value="physics">Physics</option>
  <option value="Am">Applied Mathmatics</option>
  <option value=""></option>
      </select>
          <br>
                        
 
  
                         <br>
                          <br>
                          <div ALIGN="CENTER" class="button">
                             
                      <input type="submit" value="submit" style="margin-top: 50px; padding: 6px 50px; font-size: 18px;font-weight: 700;border-radius: 5px; cursor: pointer; text-align: center;">
                       <br>
                         
             
        </h1>
    </body>
</html>