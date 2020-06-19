<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><!-- 豪华大床房 -->
<!DOCTYPE html>
<html class="no-js"> 
	<head><%@include file = "txt/declare.txt" %></head>
	<body>
	<div id="fh5co-wrap">
		<!-- 顶部功能栏 --><%@include file = "txt/head.txt" %>
		<!-- 豪华大床房第一画 -->
		<div class="fh5co-hero" style="background-image: url(images/HaoHuaDaChuang1.jpg);">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
						<div class="fh5co-intro fh5co-table-cell">
							<h1 class="text-center"> &nbsp&nbsp豪  &nbsp&nbsp华  &nbsp&nbsp大  &nbsp&nbsp床  &nbsp&nbsp房  </h1>
							<br><p>价格：￥806	40m&sup2	大床/双床	有窗 </p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 豪华大床房第二画 -->
		<div class="fh5co-section">
			<div class="container">
				<div class="row">
				<!-- 第一图 -->
					<div class="col-md-3 fh5co-staff">
						<img src="images/HaoHuaDaChuang2.png" class="img-responsive" >
						<h3>豪华大床房</h3>
						<h4>价格：￥806</h4>
						<p>40m&sup2	大床/双床	有窗</p>
						<form action="Sumbit.jsp">
							<input type="submit" name="HHDC"  value="Choose it!">
							<input type="button" onclick="window.location.href=('../index4.jsp')" value="Want anyroom">
							<input type="hidden" name="number"  value="1">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div> <!-- END fh5co-wrap -->
	<!-- 底部 --><%@include file = "txt/footer.txt" %>
	</body>
</html>