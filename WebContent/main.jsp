<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- <%
	String login = (String) session.getAttribute("login");
	if (login == null || login.trim().equals("")) {
		// response.sendRedirect("loginForm.jsp");
		
	} else {
%> --%>

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Shop Homepage</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">

<!-- Custom styles for this template -->
<link href="/JSP-Shop/css/main.css" rel="stylesheet">


</head>

<body>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
			<a class="navbar-brand" href="main.jsp">Shop</a>

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">

					<li class="nav-item"><a class="nav-link" href="#">소개
							<!-- <span class="sr-only">(current)</span> -->
					</a></li>

					<li class="nav-item"><a class="nav-link" href="cart.jsp">장바구니</a></li>

					<li class="nav-item"><a class="nav-link" href="mypageForm.jsp">마이페이지</a></li>

					<li class="nav-item"><a class="nav-link" href="loginForm.jsp">로그인</a></li>

					<li class="nav-item"><a class="nav-link" href="joinForm.jsp">회원가입</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Categories Navbar -->
	<nav class="navbar navbar-expand-lg nav-categories">
		<div class="container col-lg-12">
			<a class="nav-category-item" href="jspshopServlet?command=catagory&kind=1">자켓</a> <a
				class="nav-category-item" href="jspshopServlet?command=catagory&kind=2">상의</a> <a
				class="nav-category-item" href="jspshopServlet?command=catagory&kind=3">하의</a> <a
				class="nav-category-item" href="jspshopServlet?command=catagory&kind=4">기타</a>
		</div>
	</nav>




	<!-- Main Content -->
	<div class="container-md p-3 col-8 mb-5 mx-auto">

		<div class="row">

			<div class="col-lg-12">

				<div id="carouselExampleIndicators" class="carousel slide my-4"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="carousel-item active">
							<img class="d-block img-fluid" src="http://placehold.it/1200x500"
								alt="First slide">
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid" src="http://placehold.it/1200x500"
								alt="Second slide">
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid" src="http://placehold.it/1200x500"
								alt="Third slide">
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>

				<div class="row">

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">상품1</a>
								</h4>
								<h5>30,000</h5>
								<!-- <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!
                </p> -->
							</div>
							<!-- <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div> -->
						</div>
					</div>

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">상품2</a>
								</h4>
								<h5>25,000</h5>
								<!-- <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!
                  Lorem ipsum dolor sit amet.</p> -->
							</div>
							<!-- <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div> -->
						</div>
					</div>

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">상품3</a>
								</h4>
								<h5>15,000</h5>
								<!-- <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!
                </p> -->
							</div>
							<!-- <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div> -->
						</div>
					</div>

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">상품4</a>
								</h4>
								<h5>60,000</h5>
								<!-- <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!
                </p> -->
							</div>
							<!-- <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div> -->
						</div>
					</div>

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">상품5</a>
								</h4>
								<h5>9,000</h5>
								<!-- <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!
                  Lorem ipsum dolor sit amet.</p> -->
							</div>
							<!-- <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div> -->
						</div>
					</div>

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">상품6</a>
								</h4>
								<h5>6,000</h5>
								<!-- <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!
                </p> -->
							</div>
							<!-- <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div> -->
						</div>
					</div>

				</div>
				<!-- /.row -->

			</div>

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->




	<!-- Footer -->
	<footer class="py-5 bg-dark">

		<div class="container">
			<p class="m-0 text-center text-white">
				<span>고객센터 : XXXX-XXXX</span> <span>&emsp;</span> <span>페이스북</span>
				<span>인스타그램</span>
			</p>
		</div>

		<hr style="width: 90%; border-color: gray;">

		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Shop 2021</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
		crossorigin="anonymous"></script>

</body>

</html>


<%-- <%
	}
%> --%>