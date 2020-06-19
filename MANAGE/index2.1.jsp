<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><!-- 查询 -->
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html> 
	<head>
		<%@include file = "../txt/declare.txt" %>
		<!-- 验证是否为空 -->
		<script type="text/javascript" src="../scripts/index2.js"></script>
	</head>
	<body>
	<div id="fh5co-wrap">
		<!-- 顶部功能栏 --><%@include file = "../txt/head2.txt" %>
	<!-- 第二页第一画 -->
	<div class="fh5co-hero" style="background-image: url(../images/hero_2.jpg);">
		<div align="center">
			<div class="fh5co-intro fh5co-table-cell">
				<h1 class="text-center">检 索 信 息</h1>
				<p><br><small>客房信息及客户信息查看</small></p>
			</div>
		</div>
	</div>
	<!-- 第二页第二画 -->
	<div class="fh5co-section">
		<div class="container" align="center">
			<div class="row" align="center">
				<a href="../MANAGE/index2.jsp">客户</a>&nbsp;&nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="../MANAGE/index2.1.jsp">房间</a>
			</div><br><br>
			<div>
				<h2 align="center">请输入房间号</h2>
            	<form name="search" action="" class="col-md-12">
            		<input type="text" name="info" value="" size="30">
					<input type="submit" name="submit1" onClick="search()">
				</form>	
			</div> <br><br><br><br><br>
			<div class="col-md-6">
				<h2 align="center">房间信息如下</h2>
			</div>
			<div class="col-md-6">
				<table border=2 width="100%" align="center">
            	<thead><tr>
            		<td align="center">C_Name</td>
            	    <td align="center">C_Sex</td>
            	    <td align="center">C_tel</td>
                	<td align="center">R_No</td>
                		<!--(房价的百分之20)-->
                	<td align="center"> R_Deposit</td>
                	<td align="center"> R_Style </td>
                	<td align="center">Check_in_time</td>
                	<td align="center">Check_out_time</td>
            	</tr></thead>
            	<%
						//1.加载驱动
					Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	    				//2.连接
	    			String url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=DoHost";
					String user="sa";  //超级管理员
					String password="";  //密码
					Connection conn=DriverManager.getConnection(url,user,password);
					String info =(String)request.getParameter("info");
						//3.接收输入信息
						//4.statement->出口,发送sql
					String sql ="select * from CUSTOMER_INFO where R_No=?";
					PreparedStatement stmt = conn.prepareStatement(sql);
					stmt.setString(1,info);
						//5.resultset->进口，接收数据
	    			ResultSet rs=stmt.executeQuery();
	   				while(rs.next()){
	    		%>
	    		<tbody>
					<tr align="center">
						<td><%=rs.getString("C_Name")%> </td><td><%=rs.getString("C_Sex")%> </td>
						<td><%=rs.getString("C_Tel")%> </td><td><%=rs.getString("R_No")%> </td>  
            			<td><%=rs.getString("R_Deposit")%> </td><td><%=rs.getString("R_Style")%> </td>
            			<td><%=rs.getString("Check_in_time")%> </td><td><%=rs.getString("Check_out_time")%> </td>
            		</tr>
       			 <%}rs.close();stmt.close();conn.close();%>
            	</tbody>
            	</table>
            </div>
		</div>
	</div>
	</div><!-- END fh5co-wrap -->
<!-- 底部 --><%@include file = "../txt/footer.txt" %>
	</body>
</html>