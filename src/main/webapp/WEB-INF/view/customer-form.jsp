<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Registration Form</title>
    
    <style>
    	.error {
    		color:red
    	}
    </style>
    
</head>
<body>
	<i>Fill out the form. Asterisk(*) means required.</i>
	
    <form:form action="processForm" modelAttribute="customer">
    	First Name : <form:input path="firstName" />
    	<br><br>
    	
    	Last Name(*) : <form:input path="lastName" />
    	<form:errors path="lastName" cssClass="error" />
    	<br><br>
    	
    	Free Passes : <form:input path="freePasses" />
    	<form:errors path="freePasses" cssClass="error" />
    	<br><br>
    	
    	Postal Code : <form:input path="postalCode" />
    	<form:errors path="postalCode" cssClass="error" />
    	<br><br>
    	
    	Couse Code : <form:input path="courseCode" />
    	<form:errors path="courseCode" cssClass="error" />
    	<br><br>
    	
    	<input type="submit" value="submit" />
    </form:form>
    
</body>
</html>  