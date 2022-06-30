<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
    <head>
    <style type="text/css">
    .error{
    color: red;
    padding-left:25px;
    }
    
    .font{
    font-weight:bold;}
    
    .qw{
    padding:0px;
    text-indent: 12px;
    font-size:15px;
    font-style:italic;
    padding-top:-2px;
    
    
    
    }
    .style{
    box-sizing: content-box;  
  width: 250px;
    border:1px solid black;
    padding-left:20px;
    padding-right: 20px;
    margin-left: 450px;
    margin-right:450px;
    background-color: #f2f2f2;
    }
    
    input[type=text],input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
    input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}


    </style>
    </head>
    <body>
    <h1 style="align-content: center;"> Home Page </h1>
        <h3>Welcome, Enter Details</h3>
        <form:form method="POST"
          action="/Registered" modelAttribute="credential" cssClass="style">
          <h3>Create Account</h3>
          <form:errors path="${submit}" cssClass="error"/>
         
          
             <table>
             
          <%--    <form:textarea rows="15" cols="100" path="content"/>--%>
             
            
              <tr style="position:centre;">
                    <td ><form:label  path="FirstName" cssClass="font">FirstName</form:label></td></tr>
                  <tr>  <td><form:input path="FirstName"/></td>
                </tr>
                 <tr>
                    <td><form:label path="LastName" cssClass="font">LastName</form:label></td></tr>
                   <tr> <td><form:input path="LastName"/></td>
                </tr>
                <tr>
                    <td><form:label path="Email" cssClass="font">Email</form:label></td></tr>
                  <tr>  <td style="width:150px;"><form:input path="Email"/></td>
          
                   <%--  <td><form:errors path="Email"/></td>--%>
                </tr>
                
               
                <tr>
                    <td><form:label path="Password" cssClass="font">
                       Password</form:label></td></tr>
                 <tr>   <td><form:password path="Password"/></td>
                    
                    <%-- <td><form:errors path="Password" cssClass="error"/></td>--%>
                </tr>
                
                <tr>
                    <td><form:label path="ConfirmPassword" cssClass="font">
                    Confirm Password</form:label></td></tr>
                 <tr>   <td><form:password path="ConfirmPassword"/></td>
                   <%--  <td><form:errors path="ConfirmPassword" cssClass="error"/></td>--%>
                </tr>
                <tr><td class="qw">Password must be of length 6</td></tr>
                
                
               <tr>
                    <td><input type="submit" value="Continue"/></td>
                </tr>
                
            </table>
            <h3>Already a User <a href="/login">Login</a></h3>
        </form:form>
    </body>
</html>