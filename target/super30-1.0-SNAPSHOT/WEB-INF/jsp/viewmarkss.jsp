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
    padding: 0;
    margin: 0;
    font-family: 'Montserrat', sans-serif;
    list-style: none;
    text-decoration: none;
}
      body{
          background:rgba(0,0,0,0.2) url(https://images.static-collegedunia.com/public/college_data/images/campusimage/1567662778accad.png); 
    background-size: cover; 
    background-blend-mode: darken; 
    height: 100vh; 
    position: relative;
    
    background-repeat: no-repeat;
      }
      .top_sec
{
    padding: 3px 5px; 
    display: flex; 
    background-color: white;
    max-width: 100%;;
    border: 3px solid black; 
    margin-bottom: 20px;
}
.emp_man
{
    width:85%;
}
.home
{
    padding-right: 20px;
    cursor: pointer;
}
table{
    background-color: white;
}
  </style>
   <body>
       <% String paramValue = request.getParameter("paramName"); %>
        <div class="top_sec">
            <h3 class="emp_man"> Welcome  </h3>
            <h3 class="home"><a href="dashboard">Home</a></h3>
            <h3><a href="homepage">Logout</a></h3>
        </div>
    
         
       <br>
        <h1 style="text-align:center;color: #ffffff;background-color: #003366"> <%=paramValue%> marks</h1>
        <br>
<!--        <input type ="text" name="" id="myInput" placeholder="search....." style="width:50%; align-content: center"onkeyup="searchFun()">-->
     
        <nav class="navbar bg-dark" data-bs-theme="dark">
  <div class="container-fluid">
    <form class="d-flex" role="search">              
      <input class="form-control me-2" type="search" placeholder="Search by student Id" aria-label="Search" id="myInput" onkeyup="searchFun()">
      <button><i class="bi bi-search"></i></button>
    </form>
  </div>
</nav>
   <br><br>
   
        <table id="myTable" align="center" border="10" width="100" style="width:70%" class="table table-hover table-dark" background-color: white;>
       
        <thead>
           <tr>
             
               <th>student id</th>
                <th>student name</th>
               <th>midsem </th>
               <th>endsem</th>
              
               <th>practical 1</th>
               <th>practical 2</th>
               <th>practical 3</th>
               <th>practical4</th>
               
                <th>Internal assesment 1</th>
               <th>Internal assesment 2</th>
               <th>Internal assesment 3</th>
               <th>Internal assesment 4</th>
               
               
           </tr>
           </thead>
           <tbody>
           <%
               String q=(String)  request.getAttribute("sid"); 
           Connection con=null;
        Statement st=null;
        
           try{
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
st= con.createStatement();
float A[];    //declaring array
A = new float[20];
 String c[];    //declaring array
c = new String[20];
//if(paramValue=="physics")
//{
 
ResultSet rs=st.executeQuery("SELECT * FROM PHYSICSM where student_id= "+q);


while(rs.next())
{   
            String id=rs.getString("student_id");
            A[1]=rs.getInt(1);
            c[2]=rs.getString(2);
            A[3]=rs.getInt(3);
            A[4]=rs.getInt(4);
            A[5]=rs.getInt(5);
            A[6]=rs.getInt(6);
            A[7]=rs.getInt(7);
            A[8]=rs.getInt(8);
            A[9]=rs.getInt(9);
            A[10]=rs.getInt(10);
            A[11]=rs.getInt(11);
            A[12]=rs.getInt(12);
      
   %>
           
           <tr>
        <td><%=A[1]%></td>
       <td><%=c[2]%></td>
       <td><%=A[3]%></td>
       <td><%=A[4]%></td>
       <td><%=A[5]%></td>
       <td><%=A[6]%></td>
       <td><%=A[7]%></td>
       <td><%=A[8]%></td>
       <td><%=A[9]%></td>
       <td><%=A[10]%></td>
       <td><%=A[11]%></td>
       <td><%=A[12]%></td>
      
       
           </tr>
         
             
   <%
       } 
}
           catch(Exception e)
        {
            System.out.println(e.getMessage());
        }

        finally
{
        st.close();
        con.close();
}
           
           %>
           </tbody>
</table>
           
           
           <script>
               
               const searchFun = () =>{
                   let filter = document.getElementById('myInput').value;
                   
                   let myTable = document.getElementById('myTable')
                   
                   let tr = myTable.getElementsByTagName('tr');
                   for(var i=0; i<tr.length; i++){
                       let td = tr[i].getElementsByTagName('td')[0];
                       if(td){
                           let textvalue = td.textContent || td.innerHTML;
                           
                           if(textvalue.indexOf(filter) > -1){
                               tr[i].style.display = "";
                           }else{
                               tr[i].style.display = "none";
                           }
                       }
                   }
                   

               }
               
           
           </script>      
           
</script>
   
  
    </body>
</html>


