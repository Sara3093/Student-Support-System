<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Support System</title>
</head>
<style>
    *{
        margin: 0px;
        padding: 0px;
    }
    .top_sec {
        background:rgba(0, 0, 0,0.2) url(https://images.static-collegedunia.com/public/college_data/images/campusimage/1567662778accad.png);
        background-size: cover;
        background-blend-mode: darken;
        height: 100vh;
        position: relative;
        
        background-repeat: no-repeat;
        align-items: center;
    }
    .heading{
        text-align: center;
        padding-top: 3%;
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
    .marks{
      
        padding: 3%;
        background-color: whitesmoke;
        width: 50%;
        border: 2px solid black;
        border-radius: 10px;
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
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
<body>
    <section class="top_sec">
        <div class="heading">
             
            <h1 style="margin-bottom: 3%;">Course Report</h1>
            <form id="Form">
                <input type="radio"  onclick="document.location='repo'" name="s1report" value="sem1"/>Physics
                   <input type="radio" onclick="document.location='coareport'" name="link" value="sem2"/>COA
             
         </form>
<% 
   
String r=(String)  request.getAttribute("sid");
int a=0,b=0,c=0;
%>
<%
   float B[];    //declaring array
B = new float[20];
float C[];    //declaring array
C = new float[20];

    Connection con=null;
 Statement st=null;
 Statement ut=null;
 Statement vt=null;
 Statement wt=null;
try{
Class.forName("oracle.jdbc.driver.OracleDriver");  

//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
st= con.createStatement();
ResultSet rs=st.executeQuery("SELECT COUNT(*) FROM physicsm");
ut= con.createStatement();
ResultSet qs=ut.executeQuery("SELECT COUNT(son) FROM s1result where son>40 ");
vt= con.createStatement();
ResultSet us=vt.executeQuery("SELECT avg(son) from s1result ");
wt= con.createStatement();
ResultSet vs=wt.executeQuery("select * from ppcde ");
int i=0;
while(rs.next())
while(qs.next())
while(us.next())
while(vs.next())
{{{
a=rs.getInt(1);
b=qs.getInt(1);
c=us.getInt(1); 
B[i]=vs.getInt(1);
C[i]=vs.getInt(2);
i=i+1; 
}
}}

%>

        </div>
        <div class="stud_info">
            <div class="marks">
                <h1> Total Number of Students <%=a%><h1>
                    <h1> Number of Students Passed  <%=b%></h1><!-- comment -->
                    <h1>Average Marks Obtained  <%=c%></h1>
                    <h1> Passing Percentage  <%=(a/b*100)%> %</h1>
            </div>
           <br>
                 
              
<canvas id="myChart" style="width:100%;max-width:400px;padding:11px 24px 15px 23px;;background: whitesmoke"></canvas>

<script>
const xValues =["<%=B[0]%>","<%=B[1]%>","<%=B[2]%>"];
const yValues = [<%=C[0]%>,<%=C[1]%>,<%=C[2]%>];


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
                      
                     }
           catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        
        finally
{
        st.close();
ut.close();
vt.close();
        con.close();

}
           
           %>  

            
          
            
        </div>
</body>
</html>