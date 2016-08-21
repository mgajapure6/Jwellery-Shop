<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
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
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="header-left-top">
					<div class="sign-up">
						<h3 align="center">SIGN IN</h3>
					</div>

					<div class="clear"></div>
				</div>
				<div class="header-left-bottom">
				<div><h3 style="color: green;">${success}</h3></div>
					<h3>
						Enter your <span class="login-color"><a href="${pageContext.request.contextPath}/login.html">Login</a> </span>details.
						Or Don't have an account <span class="login-color"><a href="${pageContext.request.contextPath}/signup.html">Register</a></span> here
					</h3>
					<div ><h3 style="color: red;">${error }</h3></div>
					<div class="header-left-bottom">

						<form action="${pageContext.request.contextPath }/login.html" method="post"> 
							<input type="email" name="email" class="email active" placeholder="Email" required="required"/> 
							<input type="password" name="password" class="lock active" placeholder="Password" required="required"/> 
							<span class="checkbox1"> <label class="checkbox">
							<input type="checkbox" name="accept" ><i> </i>Remember Me.</label>
							</span> <input type="submit" value="Sign in">
						</form>
					</div>
					<div class="header-social">
						<span class="line"> </span>
						<h4>
							Sign in with your <a href="#">Facebook</a> or <a href="#">Twitter</a>
						</h4>
						<a href="#" class="face">Facebook</a> <a href="#" class="twitt">Twitter</a>
					</div>
				</div>

			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
	<br>
	<!-- content -->
	<!-- footer -->
	<jsp:include page="footerRow.jsp"></jsp:include>
	<!-- copy-right -->
	<!-- container -->

</body>
</html>


