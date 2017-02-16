<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Spring simple Example using JdbcTemplate</title>
</head>
<body>
    <h3>Lista de identificativos de Contactos</h3>

    <select name="clave" onChange="window.location.href=this.value">
    <option value="">Selecciona uno</option>
    <c:forEach var="item" items="${idList}">
    <option value="/show/${item}">${item}</option>
    </c:forEach>
    </select>
    <form method="POST" accept-charset='utf-8'>
			<button onClick="window.location.href='/show'">Listar todos</button>
    </form>
	
	<c:if test="${not empty id}">
		<p>Contacto ${id} se ha borrado correctamente.</p>
	</c:if>
</body>
</html>
