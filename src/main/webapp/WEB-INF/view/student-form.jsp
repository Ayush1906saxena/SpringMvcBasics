<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Page</title>
</head>
<body>

    <form:form action="processForm" modelAttribute="student" >
    	First Name : <form:input path="firstName" />
    	<br><br>
    	
    	Last Name : <form:input path="lastName" />
    	<br><br>
    	
    	Country:
    	<form:select path="country">
    	
    		<form:options items="${student.countryOptions}"/>
    		 
    	</form:select>
    	<br><br>
    	
    	Favorite Programming Languages:
    	<form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions}"  />
    	<br><br>
    	
    	Experienced in operating systems:
    	<form:checkboxes path="os" items="${student.operatingSystems}" />
    	<br><br>
    	
    	<input type="submit" value="submit" />
    	
    </form:form>
    
</body>
</html>  