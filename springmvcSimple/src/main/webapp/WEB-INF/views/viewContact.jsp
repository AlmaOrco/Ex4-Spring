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
		<form method="POST">
			
			<button onClick="window.location.href='edit/${id}'">Edit</button>
			<button onClick="window.location.href='delete/${id}'">Delete</button>
			<button onClick="window.location.href='employee'">Return</button> <!-- No va -->
		</form>
	</div>
</body>
</html>
