<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="header">
	<div class="container">
		<div style="width: 100%; ">
			<c:choose>
				<c:when test="${not empty sessionScope.email}">
					<div align="right">
						<h4 style="color: white;">Welcome ${sessionScope.email }</h4>
					</div>
				</c:when>
			</c:choose>
		</div>
	</div>
	<div class="container">
		<!-- logo -->
		<div class="logo">
			<a href="${pageContext.request.contextPath}/"><img
				src="${pageContext.request.contextPath}/resources/images/mgjlogo.png"
				title="" /></a>
		</div>
		<!-- logo -->
		<!-- cart-info -->

		<div class="cart-info">
			<ul>
				<c:choose>
					<c:when test="${not empty sessionScope.email}">
						<li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
						<li><a href="${pageContext.request.contextPath}/myProfile.html">Profile</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="${pageContext.request.contextPath}/signup.html">Sign
								up</a></li>
						<li><a href="${pageContext.request.contextPath}/login.html">Login</a></li>
					</c:otherwise>
				</c:choose>
				<li><a href="${pageContext.request.contextPath}/store.html">Stores</a></li>
				<li class="cartinfo"><a
					href="${pageContext.request.contextPath}/cart.html"><span>
					</span>My bag 
							<b style="color: white;">${sessionScope.cart.size() }</b>
						items</a></li>

			</ul>
			<div class="clearfix"></div>
		</div>
		<!-- /cart-info -->
	</div>
	<!-- header -->
</div>

