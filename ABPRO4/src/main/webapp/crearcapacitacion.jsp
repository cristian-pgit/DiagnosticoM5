<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bitte Dans Les Youx</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp"
	crossorigin="anonymous">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="shortcut icon" href="https://i.ibb.co/FzxxWTL/BDLY-ico.png"
	type="image/x-icon">
<link rel="stylesheet" href="Assets/style.css">
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<c:if test="${sessionScope.userName == null}">
		<c:redirect url="/" />
	</c:if>


	<div class="container">
		<div class="row">
			<div class="col-4"></div>
			<div class="col-4 text-center">
				<br>
				<h1 class="h3 mb-3 fw-normal text-center">Crear capacitación</h1>

				<form action="CrearCapacitacion" method="post">
					<div class="form-group">
						<label class="text-center" for="idCapacitacion">ID de Capacitación:</label> <input
							type="number" class="form-control" id="idCapacitacion"
							name="idCapacitacion">
					</div>
					<div class="form-group">
						<label class="text-center" for="rutCliente">RUT de Cliente:</label> <input
							type="number" class="form-control" id="rutCliente"
							name="rutCliente">
					</div>
					<div class="form-group">
						<label class="text-center" for="dia">Día:</label> <input type="text"
							class="form-control" id="dia" name="dia">
					</div>
					<div class="form-group">
						<label class="text-center" for="hora">Hora (xx:xx):</label> <input type="text"
							class="form-control" id="hora" name="hora"
							pattern="^(0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$">
					</div>
					<div class="form-group">
						<label class="text-center" for="lugar">Lugar:</label> <input type="text"
							class="form-control" id="lugar" name="lugar">
					</div>
					<div class="form-group">
						<label class="text-center" for="duracion">Duración:</label> <input type="number"
							class="form-control" id="duracion" name="duracion">
					</div>
					<div class="form-group">
						<label class="text-center" for="cantAsist">Cantidad de Asistentes:</label> <input
							type="number" class="form-control" id="cantAsist"
							name="cantAsist">
					</div>
					<br>
					<button type="submit" class="btn btn-primary" >Guardar</button>
				</form>
			</div>
			<div class="col-4"></div>
		</div>

	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
		crossorigin="anonymous"></script>
</body>
</html>