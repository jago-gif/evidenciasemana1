<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Listar Ordenes</title>
<script src="https://kit.fontawesome.com/e007cf61a1.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body class="m-0 row justify-content-center">
<div class="text-center">
	<h1>Ordenes de trabajo</h1>
</div>
<jsp:scriptlet>
String cNombre[]	= request.getParameterValues("cNombre");
pageContext.setAttribute("variables", cNombre);
</jsp:scriptlet>
<div class= px-5>
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nombre</th>
      <th scope="col">Telefono</th>
      <th scope="col">Direccion</th>
	  <th scope="col">Electrodomestico</th>
	  <th scope="col">Estado</th>
	  <th scope="col">Fecha sol.</th>
	  <th scope="col">Fecha actu.</th>
	  <th scope="col">Accion.</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
     	 <%-- JSP foreach tag --%>
     	 <c:forEach items="${cNombre}" var="o" varStatus="i">
     	 
		<c:out value="${cNombre}"/> <br> <br>
		</c:forEach>
		for (String nombreN : cNombre) {
			enNom += "cNombre="+nombreN+"&" ;
		 }
      <td>Otto</td>
      <td>@mdo</td>
      <td>Mark</td>
      <td>Otto</td>
      <td>Mark</td>
      <td>Otto</td>
      <td><i class="fa-solid fa-pen-to-square"></i></td>
    </tr>
  </tbody>
</table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>