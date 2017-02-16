<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
</head>
<body>
	<div>
		<h1>Aqui deberian aparecer los datos del contacto.</h1>
		<h3>${idContact.name}</h3>
		<p>${idContact.email}</p>
		<p>${idContact.address}</p>
		<p>${idContact.telephone}</p>
	</div>
	<div>
		<form method="POST"  action="/edit/${id}">
			<input type="submit" value="Edit">
		</form>
		<form method="POST"  action="/delete/${id}">
			<input type="submit" value="Delete">
		</form>
		<form method="POST" action="/employee">
			<input type="submit" value="Aceptar">
		</form>
	</div>
</body>
</html>
