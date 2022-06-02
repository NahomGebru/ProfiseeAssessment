<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.saleManagementDAO"%>
<%@page import="pojo.sale"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search sale</title>
</head>
<body>
<%@ include file="header.jsp" %>  
<div align="center" style="padding-top:25px;">
	<form action="searchsale.jsp">
		<label>Enter sale ID: </label>
		<input type="text" name="saleId" size="25" class="searchTextField"/>
		<button class="actionBtn">Search</button>
	</form>
</div> 
	<table align="center" class="saleTable">
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
			String saleId = request.getParameter("saleId");
			if(saleId != null)
			{
				sale p = saleManagementDAO.getsaleById(saleId);
			
				if(p != null)
				{
		%>
			<tr>
				<td><%=p.getSaleId()%></td>
				<td><%=p.getSaleProduct()%></td>
				<td><%=p.getSaleSalesperson()%></td>
				<td><%= p.getSaleCustomer() %></td>
				<td><%= p.getSaleSDate() %></td>
				<td><button class="actionBtn" onclick="location.href = 'editsale.jsp?prodId=<%= p.getsaleId()%>';">Edit</button></td>
				<td><button class="actionBtn" onclick="location.href = 'processDeletesale.jsp?prodId=<%= p.getsaleId()%>';">Delete</button></td>
			</tr>
	    <%		}
				else
				{
		%>
			<tr>
				<td colspan="5">No record to display</td>
			</tr>
		<% 
				}
			}
			else 
			{
		%>
			<tr>
				<td colspan="5">No record to display</td>
			</tr>
		<% 
			}
		%>
	</table>

</body>
</html>