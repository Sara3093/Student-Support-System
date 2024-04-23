<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>grade display page</title>
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
    
    <body>
        <div class="top_sec">
            <div class="heading">
           
                <h1>Achievements</h1><br>
                <br>
                <br>
                
             </div>
             <form  action="displayform15" method="post">
                 <div>
                     <div class="data">
                         <label>Enter Your Student Id </label>
                         <input type="text" name="k">
                         <br>
                         <br>
                         <label>Enter Your  Name </label>
                         <input type="text" name="j">
                         <br>
                         <br>
                         <label> Date on which certificate is issued</label>
                         <input type="date" name="g">
                         <br>
                         <br>
                        <label>Event Description </label>
                         <input type="text" name="h">
                         <br>
                         <br>
                         <label> Postion Secured</label><!-- comment -->
                         <input type="text" name="i">
                         <br>
                         <br>
                         <label>PHOTO </label>
                         <input type="file" name="l">
                         <br>
                         <br>
                        <div ALIGN="CENTER">
                      <input type="submit" value="submit">
                       <br>
                       
                        
                     </div>
                 </div>
                     
             </form>
        
        </div>
     </body>
</html>
