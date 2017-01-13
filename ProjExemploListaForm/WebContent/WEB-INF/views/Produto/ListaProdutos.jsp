<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Produtos Adicionados</title>
</head>
<body>
	<div>
    <table>
      <thead>
		<tr>
			<th>Id</th>
			<th>Produto</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${produtos}" var="produto">
			<tr>
				<td>${produto.id}</td>
				<td>${produto.descricao}</td>
			</tr>
		</c:forEach>
	</tbody>
  </table>
  </div>
</body>
</html>