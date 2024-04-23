<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
    .top-sec
{
    padding: 3px 5px; 
    display: flex; 
    background-color: white;
    max-width: 100%;;
    border: 3px solid black; 
    margin-bottom: 20px;
    color: black;
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

  </style>
   <body>
        <div class="top-sec">
            <h3 class="emp_man"> Welcome </h3>
            <h3 class="home"><a href="dashboard">Home</a></h3>
            <h3><a href="homepage">Logout</a></h3>
        </div>
    
         <div class="top_sec">
            <br>
        <h1 style="text-align:center;color: #ffffff;background-color: #003366">Physics marks</h1>
        <br>
<!--        <input type ="text" name="" id="myInput" placeholder="search....." style="width:50%; align-content: center"onkeyup="searchFun()">-->
     
        <nav class="navbar bg-dark" data-bs-theme="dark">
  <div class="container-fluid">
    <form class="d-flex" role="search" >              
      <input style="font-size: 15px; padding: 5px; margin-top: 20px;align-items: center;" class="form-control me-2" type="search" placeholder="Search by student Id" aria-label="Search" id="myInput" onkeyup="searchFun()">
      <button><i class="bi bi-search"></i></button>
    </form>
  </div>
</nav>
   <br><br>
        <table id="myTable" align="center" border="10" width="100" style="width:70% ;background-color: whitesmoke;margin-left: 15%" class="table table-hover table-dark">
       
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
           Connection con=null;
        Statement st=null;
           try{
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
st= con.createStatement();
ResultSet rs=st.executeQuery("SELECT * FROM physicsm ");
while(rs.next())
{   
            String id=rs.getString("student_id");
      
   %>
           
           <tr>
        <td><%=rs.getInt(1)%></td>
       <td><%=rs.getString(2)%></td>
       <td><%=rs.getString(3)%></td>
       <td><%=rs.getString(4)%></td>
       <td><%=rs.getString(5)%></td>
       <td><%=rs.getString(6)%></td>
       <td><%=rs.getString(7)%></td>
       <td><%=rs.getString(8)%></td>
       <td><%=rs.getString(9)%></td>
       <td><%=rs.getString(10)%></td>
       <td><%=rs.getString(11)%></td>
       <td><%=rs.getString(12)%></td>
      
       
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
         </div>
       
   
  
    </body>
</html>
