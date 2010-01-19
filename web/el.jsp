<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" xmlns:c="http://java.sun.com/jsp/jstl/core" version="2.0">
<jsp:directive.page contentType="application/xhtml+xml"/>
<jsp:output doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
    doctype-root-element="html"
    omit-xml-declaration="false"/>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>Insert title here</title>
</head>

<body>
	<p>${applicationScope.dog.name}</p>
	<p>${header.host}</p>
</body>

</html>
</jsp:root>