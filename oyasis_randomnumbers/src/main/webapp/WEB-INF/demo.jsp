<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>random-numbers</title>
<style>
 
   body {
     background-color : #292C34; 
   }
   .cmsg {
       color: aliceblue;
       font-size: 50px;
       font-family :'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
       padding-top: 300px;
   }
   .container {
       margin-left: 300px;
       display: flex;
   }
   .box1 {
       background-color: aliceblue;
       width: 700px;
       height: 300px;
       border-radius: 30px;
       margin-top: 30px;
   }
   .umsg {
       color: aliceblue;
       font-size: 50px;
       font-family :'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
       padding-top: 300px;
       margin-left: 90px;
   }
  
   .click {
       width: 400px;
       height: 30px;
       margin-left: 800px;
       margin-top: -150px;
       color:#292C34;
       font-size: 20px;
       border-radius: 20px;
   }
   .ok {
       width: 200px;
       height: 30px;
       border-radius: 10px;
       margin-top: 200px;
       margin-left: -300px;
       cursor: pointer;
       font-size: 15px;
       
   }
   .ok:hover {
       color:  red;
       background-color: greenyellow;
   }
  .dis {
     color : red;
   }
  
</style>
</head>

<body>

    <div class="container">
   <div class="cmsg">
       I SAY...
       <div class="box1">
        <% String res = (String)request.getAttribute("res"); %>
        <% if(res!=null) { %>
        <br>
        <p class = "dis" align = "center"> <%= res %></p>
        <% } %>
    </div>
   </div>
   <div class="umsg">
       YOU SAID...
       <div class="box1">
         <%
           String result = (String)request.getAttribute("result");
         %>
         <%
           if(result!= null) {
 
         %>
         <br>
         <p class = "dis" align = "center"> <%=result %></p>
         <%
         }
         %>
       </div>
   </div>

</div>
   <div class="box2">
    
   <form action="DemoServlet" method = "post">
     <input class = "click" type="text" placeholder="       enter your number between 1-100 here" name = "t1">
    <input class = "ok" type = "submit" value = "SELECTED">
    </form>
   </div>
</body>
<script type="text/javascript">
  
</script>
</html>