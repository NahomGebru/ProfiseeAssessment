<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.SaleManagementDAO"%>
<%@page import="pojo.Sale"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Sales</title>
</head>
<body>
<%@ include file="header.jsp" %>  

	<table align="center" class="SaleTable">
		<thead>
			<tr>
				<th>Sale ID</th>
				<th>Product</th>
				<th>Salesperson</th>
				<th>Customer</th>
				<th>Sales Date</th>
				<th colspan="2">Actions</th>
			</tr> 
		</thead>
		<%
			List<Sale> SaleList = SaleManagementDAO.getAllSales();
			for (Sale p : SaleList) {
		%>
		<tr>
			<td><%=p.getSaleId()%></td>
			<td><%=p.getSaleProduct()%></td>
			<td><%=p.getSaleSalesperson()%></td>
			<td><%= p.getSaleCustomer() %></td>
			<td><%= p.getSaleSDate() %></td>
			<td><button class="actionBtn" onclick="location.href = 'editSale.jsp?saleId=<%= p.getSaleId()%>';">Edit</button></td>
			<td><button class="actionBtn" onclick="location.href = 'processDeleteSale.jsp?saleId=<%= p.getSaleId()%>';">Delete</button></td>
		</tr>

		<%
}
%>
	</table>

</body>
</html>