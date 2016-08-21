<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Thanks for Order</title>
<jsp:include page="headTag.jsp"></jsp:include>
</head>
<body>
	<!-- container -->
	<!-- header -->
	<jsp:include page="logoRow.jsp"></jsp:include>
	<!-- sub-header -->
	<jsp:include page="navigationRow.jsp"></jsp:include>
	<!-- /sub-header -->

	<div class="container">
		<div align="center">
			<h1 style="color: green;">
				We will Proceed your order. <br>Thank you for placing an order
			</h1>
			<br> <a
				href="${pageContext.request.contextPath}/collections.html/"
				class="btn btn-primary" role="button">Continue Shopping</a>
		</div>
		<br>
	</div>
	<!-- footer -->
	<jsp:include page="footerRow.jsp"></jsp:include>
	<!-- copy-right -->
	<!-- container -->

</body>
</html>


