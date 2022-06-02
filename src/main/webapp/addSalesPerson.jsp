<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="dao.salespersonManagementDAO"%>
<%@page import="pojo.salesperson"%>
<%@page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add salesperson</title>
</head>
<body>
	<%@ include file="header.jsp" %>

	<div align="center">
		<form action="processAddsalesperson.jsp" method="post">
			<table class="salespersonTable">
				<thead>
					<tr>
						<th colspan="2">
							Salesperson Details
						</th>
					</tr>
				</thead>
				<tr>
					<td><input type="text" name="salespersonId" size="20"
						class="salespersonTextField" /></td>
				</tr>
				<tr>
					<td>First Name</td>
					<td><input type="text" name="salespersonFname" size="20"
						class="salespersonTextField" /></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><input type="text" name="salespersonLname" size="20"
						class="salespersonTextField" /></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" name="salespersonAdd" size="20"
						class="salespersonTextField" /></td>
				</tr>
				<tr>
					<td>Phone</td>
					<td><input type="text" name="salespersonPhone" size="20"
						class="salespersonTextField" /></td>
				</tr>
				<tr>
					<td>Start Date</td>
					<td><input type="text" name="salespersonSDate" size="20"
						class="salespersonTextField" /></td>
				</tr>
				<tr>
					<td>Termination Price</td>
					<td><input type="text" name="salespersonTDate" size="20"
						class="salespersonTextField" /></td>
				</tr>
				<tr>
					<td>Manager</td>
					<td><input type="text" name="salespersonManager" size="20"
						class="salespersonTextField" /></td>
				</tr>
			</table>
			<button class="actionBtn" style="margin-top:10px">Add</button>
		</form>
	</div>
</body>
</html>