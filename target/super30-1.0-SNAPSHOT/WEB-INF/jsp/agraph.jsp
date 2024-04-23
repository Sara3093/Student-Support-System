<%-- 
    Document   : agraph
    Created on : 15-Apr-2023, 5:53:30 pm
    Author     : shruti
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>grade display page</title>
    </head>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <style>
        *{
            
            font-family: sans-serif;
            margin:0px;
            padding:0px;
            
        }   
        .top_sec{
            background:rgba(0, 0, 0,0.4) url(https://images.static-collegedunia.com/public/college_data/images/campusimage/1567662778accad.png);
        background-size: cover;
        background-blend-mode: darken;
        height: 100vh;
        position: relative;
        text-align: center;
        background-repeat:no-repeat; 
            height:100%;
                width:100%;
        }
        

       
        .head li{
            float:left;
            color:white;
            font-size: 23px;
        }
        .head li img{
                
                height: 41px;
                width: 41px;
                margin: -10px -21px;
                background-color: white;
                
            }
            
            .heading h1{
            text-align:center;
            
            
            border: 3px solid black;
            background-color:#192f42;
            color:white;
            width:300px;
            padding: 10px 2px;
            display:inline-block;
            position:absolute;
            top:65px;
            left:748px;
        }

        h1{
            font-size: 30px;
            color:white;
            padding: 39px 42px;
        }

            .heading h1{
            text-align:center;
            margin: 40px -250px;
            
            border: 3px solid black;
            background-color:#192f42;
            color:white;
            width:300px;
            padding: 10px 2px;
            display:inline-block;
            
        }
    .data{
        font-size: 23px;
        background-color:#ffffffe3;
        width: 927px;         
        height: 280px;
        padding: 57px 35px;
        margin: 132px auto;
        
        
       
    }
 
    .data input{
            margin-left: 12cm;
            font-size: 23px;
        align-content: center;
    }
    .data label{
        font-size: 23px;
        position: absolute;
        margin:5px 23px;
        align-content: center;
    }
    input[type=submit]{
            text-align: center;
            margin: 13px 113px;
            padding:5px;
            background-color: #113044;
            cursor: pointer;
            width:300px;
            color:white;
            font-size: 23px;
        }
    
    </style>
    <% 
     String r=(String)  request.getAttribute("da");
     %>
     <body>
         <%=r%>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
<body>
    <div class="top_sec">
         <h1 style="text-align:center;color: #ffffff;background-color: #003366">ATTENDANCE REPORT</h1>
        <br>
 <%
     Connection con=null;
        Statement st=null;
        Statement t=null;
         Statement qt=null;
         PreparedStatement stmt=null;
          PreparedStatement stmt1=null;
       try{
        
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  

qt= con.createStatement();
t= con.createStatement();

 

//ResultSet rs=st.executeQuery("select (select count(SHRUTI) from pattendance WHERE SHRUTI='present' and datee=r)as tp,(select count(hemangi) from pattendance WHERE hemangi='present'and datee='2023-04-17')as na from pattendance  ");
ResultSet s=t.executeQuery("select count(*)from pattendance");
stmt1=con.prepareStatement("select (select count(SHRUTI) from pattendance WHERE SHRUTI='present' and datee=?)as tp,(select count(hemangi) from pattendance WHERE hemangi='present'and datee=?)as na from pattendance  ");
   stmt1.setString(1,r);
   stmt1.setString(2,r);
   ResultSet rs=stmt1.executeQuery();
ResultSet p=qt.executeQuery("select * from APREPORT");


float A[];    //declaring array
A = new float[20];
String B[];    //declaring array
B = new String[20];
int C[];    //declaring array
C = new int[20];
int i=0,Q;

while(p.next())

{


    { B[i]=p.getString(1);
     }
    





    //String ida=rs.getString("empid");
    
    
   %>
  
<% 
     C[i]=p.getInt(2);
       i=i+1; 
 }
 while(rs.next())
    {
    A[0]=rs.getInt(1);
A[5]=rs.getInt(2);
A[1]=(rs.getInt(1)+rs.getInt(2));
A[3]=A[1]/2;
A[4]=A[3]*100;
int z=rs.getInt(1);

Q=Math.round(A[4]);
}
while(s.next())
    {
    A[2]=s.getInt(1);



}
%>
  <h1 > TOTAL SESSIONS     <%=A[2]%> </h1>  
 
   <h1 > TODAY'S PERCENTAGE OF ATTENDANCE    <%=A[4]%> </h1> 
<canvas id="myChart" style="width:100%;max-width:600px; padding: 60px 60px 60px 60px;background: whitesmoke"></canvas>


<script>
const xValues =["<%=B[0]%>","<%=B[1]%>","<%=B[2]%>","<%=B[3]%>","<%=B[4]%>","<%=B[5]%>","<%=B[6]%>"];
const yValues = [<%=C[0]%>,<%=C[1]%>,<%=C[2]%>,<%=C[3]%>,<%=C[4]%>,<%=C[5]%>,,<%=C[6]%>];


new Chart("myChart", {
  type: "line",
  data: {
    labels: xValues,
    datasets: [{
      fill: false,
      lineTension: 0,
      backgroundColor: "rgba(0,0,255,1.0)",
      borderColor: "rgba(0,0,255,0.1)",
      data: yValues
    }]
  },
  options: {
    legend: {display: false},
    scales: {
      yAxes: [{ticks: {min: 0, max:100}}],
    }
  }
});
 

</script>
<%
   stmt=con.prepareStatement("INSERT INTO APREPORT VALUES(?,?)");
   stmt.setString(1,r);
   stmt.setInt(2,(int) A[4]);
    stmt.executeUpdate();
}
           catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        
        finally
{
       
     
         
         t.close();
        qt.close();
     stmt.close();
      stmt1.close();
        con.close();
       
}
           
           %>


    </div>
    
</body>
</html>

