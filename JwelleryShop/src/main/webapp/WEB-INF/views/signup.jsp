<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Sign up n now</title>
<jsp:include page="headTag.jsp"></jsp:include>
</head>
<body>
	<!-- container -->
	<!-- header -->
	<jsp:include page="logoRow.jsp"></jsp:include>
	<!-- sub-header -->
	<jsp:include page="navigationRow.jsp"></jsp:include>
	<!-- /sub-header -->


	<!-- content -->
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="header-left-top">
					<div class="sign-up">
						<h3 align="center">SIGN UP</h3>
					</div>

					<div class="clear"></div>
				</div>
				<div class="header-left-bottom">
					<h3>
						Enter your <span class="login-color"><a href="${pageContext.request.contextPath}/signup.html">Registration </a></span>details.
						Or have an account <span class="login-color"><a href="${pageContext.request.contextPath}/login.html">Login</a></span> here
					</h3>
					<div ><h3 style="color: red;">${error }</h3></div>
					<div class="header-left-bottom">

						<form action="${pageContext.request.contextPath }/signup.html" method="post">
							<input type="text" name="name" class="user active" placeholder="Full Name" required="required" /> 
							<input type="email" name="email" class="email active" placeholder="Email" required="required"/> 
							<input type="password" name="password" class="lock active" placeholder="Create password" required="required"/>  
							<span class="checkbox1"> <label class="checkbox">
							<input type="checkbox" name="accept"  required="required"><i> </i>I
									Accept Terms.</label>
							</span> <input type="submit" value="Sign up">
						</form>
					</div>
					<div class="header-social">
						<span class="line"> </span>
						<h4>
							SignUp with your <a href="#">Facebook</a> or <a href="#">Twitter</a>
						</h4>
						<a href="#" class="face">Facebook</a> <a href="#" class="twitt">Twitter</a>
					</div>
				</div>

			</div>
			<div class="col-md-2"></div>
		</div>
	</div>

	<!-- content -->
	<!-- footer -->
	<jsp:include page="footerRow.jsp"></jsp:include>
	<!-- copy-right -->
	<!-- container -->

</body>
</html>


