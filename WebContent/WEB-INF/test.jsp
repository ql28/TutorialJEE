<%@ page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Test</title>
	</head>
	
	<body>
		<p>Ceci est une page générée depuis une JSP.</p>
		<p>
            <%
            //code java qui fonctionne mais ne jamais mettre de code java dans une jsp
            String attribut = (String) request.getAttribute("test");
            out.println( attribut );
            
            String parametre = request.getParameter( "auteur" );
            out.println( parametre );
            %>
        </p>
	</body>
</html>