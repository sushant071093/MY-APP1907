<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
    <head>
    </head>
    <body>
    <h1 style="align-content: center;"> Home Page </h1>
        <h3>Welcome, Enter The Employee Details</h3>
        <form:form method="POST"
          action="/addEmployee" modelAttribute="employee">
          
             <table>
                <tr>
                    <td><form:label path="name">Name</form:label></td>
                    <td><form:input path="name"/></td>
                </tr>
                <tr>
                    <td><form:label path="id">Id</form:label></td>
                    <td><form:input path="id"/></td>
                </tr>
                <tr>
                    <td><form:label path="contactNumber">
                      Contact Number</form:label></td>
                    <td><form:input path="contactNumber"/></td>
                </tr>
                <tr>
                <td> <form:label path="gender">Gender</form:label></td>
                <td><form:select path="gender" items="${genderList}"></form:select></td>
                </tr>
                <tr>
                <td> <form:label path="disabled">Disability</form:label></td>
                <td><form:radiobuttons path="disabled" items="${disableList}"/></td>
                <td><form:radiobutton path="disabled" items="${disableList}"></form:radiobutton></td>
                </tr>
                
                
                <tr>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form:form>
    </body>
</html>