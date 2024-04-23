<%-- 
    Document   : osreport
    Created on : 17-May-2023, 7:37:59 pm
    Author     : shruti
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
    
    
    .heading{
        text-align: center;
        padding-top: 5%;
        font-size: 24px;
        color: whitesmoke;
        
    }
    table{
        border-collapse: collapse;
        border-radius: 10px;
        margin: auto;
        padding: auto;
        height: 150px;
        width:65%;
        background-color: whitesmoke;
        padding: 2%;
       
    }
    .stud_info{
        
        margin: 3%;
    }
    .stud_grade{
        
        margin: 3%;
    }
    th{
        padding: 1.8% 1%;
    }
    span{
        font-weight: bold;
        font-size: 18px;
    }
    td{
        padding: 0.5%;
        font-size: 18px;
    }
      
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
  <body>  
      <section class="top-sec">
          <div class="top_sec">
            <h3 class="emp_man"> Welcome  </h3>
            <h3 class="home"><a href="dashboard">Home</a></h3>
            <h3><a href="homepage">Logout</a></h3>
        </div>
<canvas id="myChart" style="width:100%;max-width:600px ;max-length:200px;background:whitesmoke;    margin: 39px;
    padding: 23px;padding-top: 40px"></canvas>
<script>
    <% 
          
     String r=(String)  request.getAttribute("sid");
     %>
         <%
     Connection con=null;
       
         PreparedStatement stmt=null;
         Statement st=null;
         Statement qt=null;
         Statement rt=null;
       try{
        
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  



 

//ResultSet rs=st.executeQuery("select (select count(SHRUTI) from pattendance WHERE SHRUTI='present' and datee=r)as tp,(select count(hemangi) from pattendance WHERE hemangi='present'and datee='2023-04-17')as na from pattendance  ");





con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
st= con.createStatement();
qt= con.createStatement();
rt= con.createStatement();
ResultSet rs=st.executeQuery("SELECT * FROM s1result WHEre prn= "+r);
ResultSet ts=qt.executeQuery("SELECT * FROM s2result WHEre prn= "+r);
ResultSet hs=rt.executeQuery("SELECT * FROM s3result WHEre prn= "+r);
while(rs.next())
while(ts.next())
while(hs.next())
{
{
{            





    //String ida=rs.getString("empid");
    
    
   %>
const xValues = ['','','','','',''];

new Chart("myChart", {
  type: "line",
  data: {
    labels: xValues,
    datasets: [{ 
      data: [<%=rs.getInt(4)%>,<%=rs.getInt(5)%>,<%=rs.getInt(6)%>],
      borderColor: "yellow",
      label:"sem1",
      fill: false
    }, { 
      data:[<%=ts.getInt(4)%>,<%=ts.getInt(5)%>,<%=ts.getInt(6)%>],
      borderColor: "green",
      fill: false,
        label:"sem2"
    }, { 
      data:[<%=hs.getInt(4)%>,<%=hs.getInt(5)%>,<%=hs.getInt(6)%>],
      borderColor: "blue",
        label:"sem3",
      fill: false
      
    }]
  },
  options: {
    legend: {display: true}
    
  }
});
</script>
<h1> semesterly report</h1>
  
         <%
                      
           }  }   }
}
           catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        
        finally
{
        st.close();
        qt.close();
        rt.close();
        con.close();

}
           
           %>
      </section>
    </body>
</html>
