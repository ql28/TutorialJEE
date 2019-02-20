<%@ page pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Test</title>
</head>
<body>
	<%-- Commentaire JSP --%>
	<p>Ceci est une page générée depuis une JSP.</p>
	<p>
		<%
			//code java qui fonctionne mais ne jamais mettre de code java dans une jsp
			String attribut = (String) request.getAttribute("test");
			out.println(attribut);

			String parametre = request.getParameter("auteur");
			out.println(parametre);
		%>
	</p>
	<p>
		Récupération du bean :

		<%-- L'action suivante récupère un bean de type Coyote et nommé "coyote" dans
la portée requête s'il existe, ou en crée un sinon. --%>
		<jsp:useBean id="coyote" class="com.sdzee.beans.Coyote">
			<%-- Ici, vous pouvez placer ce que vous voulez : 
        définir des propriétés, créer d'autres objets, etc. --%>
			<p>Nouveau bean !</p>
		</jsp:useBean>
		<jsp:getProperty name="coyote" property="prenom" />
		
		<%-- Elle a le même effet que le code Java suivant : --%>
		<%
			com.sdzee.beans.Coyote coyote2 = (com.sdzee.beans.Coyote) request.getAttribute("coyote");
			if (coyote2 == null) {
				coyote2 = new com.sdzee.beans.Coyote();
				request.setAttribute("coyote", coyote2);
			}
			out.println(coyote2.getPrenom());
			out.println(coyote2.getNom());
		%>
	</p>
</body>
</html>