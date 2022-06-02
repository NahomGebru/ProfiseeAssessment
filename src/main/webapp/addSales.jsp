<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="dao.saleManagementDAO"%>
<%@page import="pojo.sale"%>
<%@page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add sale</title>
</head>
<body>
	<%@ include file="header.jsp" %>

	<div align="center">
		<form action="processAddsale.jsp" method="post">
			<table class="saleTable">
				<thead>
					<tr>
						<th colspan="2">
							Sale Details
						</th>
					</tr>
				</thead>
				<tr>
					<td>sale ID</td>
					<td><input type="text" name="saleId" size="20"
						class="saleTextField" /></td>
				</tr>
				<tr>
					<td>Product</td>
					<td><input type="text" name="saleProduct" size="20"
						class="saleTextField" /></td>
				</tr>
				<tr>
					<td>Salesperson</td>
					<td><input type="text" name="saleSalesperson" size="20"
						class="saleTextField" /></td>
				</tr>
				<tr>
					<td>Customer</td>
					<td><input type="text" name="saleCustomer" size="20"
						class="saleTextField" /></td>
				</tr>
				<tr>
					<td>Sales Date</td>
					<td><input type="text" name="saleSalesDate" size="20"
						class="saleTextField" /></td>
			</table>
			<button class="actionBtn" style="margin-top:10px">Add</button>
		</form>
	</div>
</body>
</html>