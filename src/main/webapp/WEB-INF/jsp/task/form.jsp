<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <form method="POST" action="${linkTo[TaskController].register}">
	<c:if test="${not empty errorMessage}">
		<c:import url="../commons/msgErrorAlert.jsp" />
	</c:if>

	<!--tarefa-->
	<div>
		<label for="task.name">Tarefa</label>
		<input type="text" name="task.name" value="${task.name}">
		<span>${errors.from('task.name')}</span>
	</div>
	<!--data-->
	<div>
		<label for="task.date">Data</label>
		<input type="date" name="task.date" value="${task.date}"> 
		<span>${errors.from('task.date')}</span>
	</div>
	<!--horario-->
	<div>
		<label for="task.hour">Hor�rio</label>
		<input type="time" name="task.hour" value="${task.hour}"> 
		<span>${errors.from('task.hour')}</span>
	</div>
	<!--observa��es-->
	<div>
		<label for="task.details">Observa��es</label>
		<textarea name="task.details" rows="3">${task.details}</textarea>
		<span>${errors.from('task.details')}</span>
	</div>

	<div>
		<button type="submit">
			Cadastrar
		</button>
		<button type="reset">
			Limpar
		</button>
	</div>
</form>