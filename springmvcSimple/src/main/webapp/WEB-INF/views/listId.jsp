<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Spring simple Example using JdbcTemplate</title>
<style type="text/css">
.border {
	border-width: 1px;
	border-style: solid;
	border-collapse: collapse;
}

.td,.th {
	border: 1px solid;
	font-family: 'arial';
	font-size: 12px;
}

.a {
	font-family: 'arial';
	font-size: 12px;
}
</style>
</head>
<body>
     <h3>Lista de identificativos de Contactos</h3>
      <p>
     <select name="clave" onChange="window.location.href=this.value">
       <option value="">Selecciona uno</option>
      <c:forEach var="item" items="${idList}">
       <option value="/show/${item}">${item}</option>
      </c:forEach>
     </select>
    </p>
</body>
</html>
