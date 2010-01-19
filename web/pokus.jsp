<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" xmlns:c="http://java.sun.com/jsp/jstl/core" version="2.0">
<jsp:directive.page contentType="application/xhtml+xml"/>
<jsp:output doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
    doctype-root-element="html"
    omit-xml-declaration="false"/>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>Pokus</title>
</head>

<body>
    <ul>
    <c:forEach var="item" items="${options}">
        <li>${item}</li>
    </c:forEach>
    </ul>

    <p>${options[0]}</p>

    <p>
        <jsp:useBean id="dog" class="cz.mixx.blog.model.Dog" scope="request"/>
        Dog's name: <jsp:getProperty property="name" name="dog"/><br/>
        Second dog's name: ${dog.name}
    </p>
</body>

</html>
</jsp:root>