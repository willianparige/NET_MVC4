<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Novo Produto como Lista</title>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
	<script language="javascript">
	    var contador = 1;
		
	    //Adiciona um novo item na tabela
		function adiciona(){

	    	var vid = $('#codigo').val();
		    var vdescricao = $('#produto').val();
			
			$('#produtosAdicionados').append('<tr><td><input type="text" name="produto['+ contador +'].id" id="produto['+ contador +'].id" value="' + vid +'"></td>'+
										         '<td><input type=text name="produto['+contador+'].descricao" id="produto['+contador+'].descricao" value="'+vdescricao+'"></td>'+
										         '<td><input type="button" value="Deletar" onclick="javascript:removeLinha(this)"></td></tr>');
			contador++;
		}

		//Remove o item da tabela
        function removeLinha(row) {
        	$(row).parent().parent().remove();
        }
        
    </script>
</head>
<body>
	<table>
       	<tr>
       		<th>Id</th>
       		<th>Descrição Produto</th>
       		<th></th>
       	</tr>
       	<tr>
       		<td><input type="text" id="codigo" name="codigo"></td>
       		<td><input type="text" id="produto" name="produto"></td>
       		<td><input type="button" onclick="javascript:adiciona();" value="Adicionar"></td>
       	</tr>
	</table>
		
	<form:form id="frmNovoProduto" action="Salvar" method="POST" modelAttribute="listaProdutos">
		<h3>Itens Adicionados:</h3>
		<div>
			<table id="produtosAdicionados"></table>
		</div>
    	<div>
            <button type="submit" >Salvar</button>
        </div>	    
	</form:form>
</body>
</html>
