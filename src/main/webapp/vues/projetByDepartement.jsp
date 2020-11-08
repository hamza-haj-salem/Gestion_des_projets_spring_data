<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<c:set var="cxt" value="${pageContext.request.contextPath}" />
</head>
<body>
<center>
<h3>Liste Des Projet de Departement: ${deptName}</h3>
</center>
 <table class="table ">
	  <thead class="thead-black">
	
				<tr>
					<th>Id</th>
					<th>Titre</th>
					<th>Etat</th>
					<th>Liste des Employees</th>
				</tr>
	  </thead>
	
		<c:forEach items="${lp}" var="p">
			<tr><td>${p.id}</td><td>${p.titre}</td><td>${p.etat}</td><td><a class="btn btn-info" href="${cxt}/departement/${p.id}/employe">Consulter les Employes</a></td></tr>
		</c:forEach>
		
	</table>
	
<center>
<a href="${cxt }/ajoutPj">Ajouter un projet</a><br>
<a href="${cxt }/ajoutEmp">Ajouter un employe</a><br>
<a href="${cxt}/home">Liste des departement</a><br>
</center>




</body>
</html>