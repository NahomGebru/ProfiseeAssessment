<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.CustomerManagementDAO"%>
<%@page import="pojo.Customer"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Customers</title>
</head>
<body>
<%@ include file="header.jsp" %>  

	<table align="center" class="CustomerTable">
		<thead>
			<tr>
				<th>Customer ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Address</th>
				<th>Phone</th>
				<th>Start Date</th>
				<th colspan="2">Actions</th>
			</tr> 
		</thead>
		<%
			List<Customer> CustomerList = CustomerManagementDAO.getAllCustomers();
			for (Customer p : CustomerList) {
		%>
		<tr>
			<td><%=p.getCustomerId()%></td>
			<td><%=p.getCustomerFame()%></td>
			<td><%=p.getCustomerLname()%></td>
			<td><%= p.getCustomerAdd() %></td>
			<td><%= p.getCustomerPhone() %></td>
			<td><%= p.getCustomerSDate() %></td>
			<td><button class="actionBtn" onclick="location.href = 'editCustomer.jsp?prodId=<%= p.getCustomerId()%>';">Edit</button></td>
			<td><button class="actionBtn" onclick="location.href = 'processDeleteCustomer.jsp?prodId=<%= p.getCustomerId()%>';">Delete</button></td>
		</tr>

		<%
}
%>
	</table>

</body>
</html>