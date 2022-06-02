<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.SalespersonManagementDAO"%>
<%@page import="pojo.Salesperson"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Salespersons</title>
</head>
<body>
<%@ include file="header.jsp" %>  

	<table align="center" class="salespersonTable">
		<thead>
			<tr>
				<th>Salesperson ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Address</th>
				<th>Phone</th>
				<th>Start Date</th>
				<th>Termination Date</th>
				<th>Manager</th>
				<th colspan="2">Actions</th>
			</tr> 
		</thead>
		<%
			List<Salesperson> SalespersonList = SalespersonManagementDAO.getAllSalespersons();
			for (Salesperson p : SalespersonList) {
		%>
		<tr>
			<td><%=p.getSalespersonId()%></td>
			<td><%=p.getSalespersonFame()%></td>
			<td><%=p.getSalespersonLname()%></td>
			<td><%= p.getSalespersonAdd() %></td>
			<td><%= p.getSalespersonPhone() %></td>
			<td><%= p.getSalespersonSDate() %></td>
			<td><%= p.getSalespersonTDate() %></td>
			<td><%= p.getSalespersonManager() %></td>
			<td><button class="actionBtn" onclick="location.href = 'editSalesperson.jsp?prodId=<%= p.getSalespersonId()%>';">Edit</button></td>
			<td><button class="actionBtn" onclick="location.href = 'processDeleteSalesperson.jsp?prodId=<%= p.getSalespersonId()%>';">Delete</button></td>
		</tr>

		<%
}
%>
	</table>

</body>
</html>