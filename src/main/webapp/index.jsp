<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body class="m-0 row justify-content-center">
<div class="text-center">
	<h1>Iniciar Sesion</h1>
</div>

<div class="col-lg-4">
<img src="img/loggin.png" alt="formulario" width="300" height="300"/>
</div>
<div class="col-xs-12 col-lg-4 col-auto pt-5 ">
	<form name="formulario" method="post" action="login">
  	<div class="mb-3 ">
	    <label for="InputNomre" class="form-label">Usuario</label>
	    <input type="text" class="form-control" name="usuario"  id="usuario">
	</div>
	  <div class="mb-3">
	    <label for="InputCorreo" class="form-label">Contraseña</label>
	    <input type="password" class="form-control" name="contrasena" id="contrasena">
	  </div>
	  <button type="submit" class="btn btn-primary">Enviar</button>
	</form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>