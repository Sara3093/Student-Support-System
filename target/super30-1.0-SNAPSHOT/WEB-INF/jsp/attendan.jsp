<%-- 
    Document   : viewmarks
    Created on : 16-Mar-2023, 10:26:40 pm
    Author     : shruti
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
  </head>
  <style>
      *{
        margin:0px;
        padding: 0px;
    }
    .top_sec{
        background:rgba(0, 0, 0,0.4) url(https://images.static-collegedunia.com/public/college_data/images/campusimage/1567662778accad.png);
        background-size: cover;
        background-blend-mode: darken;
        height: 100vh;
        position: relative;
        text-align: center;
        background-repeat:no-repeat; 
    }

  </style>
   <body>
       <div class="top_sec">
           <br>
        <h1 style="text-align:center;color: #ffffff;background-color: #003366">Students Attendance</h1>
        <br>
<!--   <input type ="text" name="" id="myInput" placeholder="search....." style="width:50%; align-content: center"onkeyup="searchFun()">-->
     
    <nav class="navbar bg-dark" data-bs-theme="dark">
  <div class="container-fluid">
    <form class="d-flex" role="search">              
      <input class="form-control me-2" type="search" placeholder="Search by student Id" aria-label="Search" id="myInput" onkeyup="searchFun()">
      <button><i class="bi bi-search"></i></button>
    </form>
  </div>
</nav>
   <br><br>
        <table id="myTable" align="center" border="10" width="100" style="width:70%;background-color:whitesmoke" class="table table-hover table-dark">
       
        <thead>
           <tr>
               
                <th>student name</th>
                <th>attendance</th><!-- <th><!-- comment -->
                
              
              
               
                
           </tr>
           </thead>
           <tbody>
           
           
   <tr>
        
       
   
          <form  action="displayform21" method="post">
              <input type="date" name= "i" value="i"> 
              <br><!-- comment -->
              <label for="courses">Choose a course:</label>

<select name="course" id="course">
  <option value="physics">physics</option>
  <option value="Am">Applied mathmatics</option>
  
</select>
              
                          <br>
                          <label for="div">Choose a Division:</label>
  <select name="div" id="div">
  <option value="A">A</option>
  <option value="B">B</option>
  <option value="B">C</option>
  </SELECT>
               <td>HEMANGI  </td>
              <td><input type="radio" name= "p1" value="present"> present
                    <input type="radio" name="p1" value="absent"> absent</td>
                </tr>
          <tr>
                <td>Shruti  </td>      
      
                  <td><input type="radio" name= "p2" value="present"> present
                  <input type="radio" name="p2" value="absent"> absent</td>
                   <div ALIGN="CENTER">
                       
                      <input type="submit" value="submit" <a href="graph?id=i"></a>
                       <br>
          </tr>   
       
          
         
             
  
           </tbody>
</table>
           
           
          
       </div> 
       
   
  
    </body>
</html>


