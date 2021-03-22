<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Join</title>

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
			<a class="navbar-brand" href="main.jsp"">Shop</a>

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

					<li class="nav-item"><a class="nav-link" href="cartForm.jsp">장바구니</a></li>

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
			<a class="nav-category-item" href="#">자켓</a> <a
				class="nav-category-item" href="#">상의</a> <a
				class="nav-category-item" href="#">하의</a> <a
				class="nav-category-item" href="#">기타</a>
		</div>
	</nav>




	<!-- Join Content -->
	<h3 class="mt-3 mb-3 text-center">회원가입</h3>

	<form class="container-md p-3 col-8 mb-5 mx-auto">

		<div class="mb-3">
			<label for="inputEmail1" class="form-label">이메일</label> <input
				type="email" class="form-control" id="inputEmail1"
				aria-describedby="emailHelp" placeholder="email@site.com">
			<!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
		</div>

		<div class="mb-3">
			<label for="inputPassword" class="form-label">비밀번호</label> <input
				type="password" class="form-control" id="inputPassword"
				placeholder="비밀번호 (숫자, 영문, 특수문자 조합 최소 8자)">
		</div>

		<div class="mb-3">
			<label for="inputPasswordCheck" class="form-label">비밀번호 확인</label> <input
				type="password" class="form-control" id="inputPasswordCheck"
				placeholder="비밀번호 확인">
		</div>

		<div class="mb-3">
			<label for="inputBirth" class="form-label">생년월일</label> <input
				type="text" class="form-control" id="inputBirth"
				placeholder="생년월일 입력 (yymmdd)">
		</div>

		<div class="mb-3">
			<label for="inputEmail" class="form-label">이메일</label> <input
				type="text" class="form-control" id="inputEmail"
				placeholder="이메일@주소">
		</div>

		<div class="mb-3">
			<label for="inputPhone" class="form-label">전화번호</label> <input
				type="text" class="form-control" id="inputPhone"
				placeholder="전화번호 입력 (010XXXXXXXX)">
		</div>

		<div class="mb-3">
			<label for="inputRecommender" class="form-label">추천인</label> <input
				type="text" class="form-control" id="inputRecommender"
				placeholder="추천인 아이디 입력">
		</div>

		<div class="mb-3 form-check">
			<input type="checkbox" class="form-check-input" id="checkAll">
			<label class="form-check-label" for="checkAll">약관 모두 동의</label>
		</div>

		<div class="mb-3 p-3 border">
			<div class="mb-3 form-check">
				<input type="checkbox" class="form-check-input" id="ageCheck">
				<label class="form-check-label" for="ageCheck">만 14세 이상입니다.
				</label>
			</div>

			<div class="mb-3 form-check">
				<input type="checkbox" class="form-check-input" id="agreeCheck">
				<label class="form-check-label" for="agreeCheck">약관 동의 </label>
			</div>

			<div class="mb-3 form-check">
				<input type="checkbox" class="form-check-input" id="privacyCheck">
				<label class="form-check-label" for="privacyCheck">개인정보수집 및
					이용에 대한 안내 </label>
			</div>

			<div class="mb-3 form-check">
				<input type="checkbox" class="form-check-input" id="eventCheck">
				<label class="form-check-label" for="eventCheck">이벤트/마케팅 수신
					동의 </label>
			</div>

			<div class="mb-3 form-check">
				<input type="checkbox" class="form-check-input" id="nightCheck">
				<label class="form-check-label" for="nightCheck">야간 혜택 알림 수신
					동의 </label>
			</div>
		</div>

		<button type="submit" class="w-100 btn btn-lg btn-primary mb-5">완료</button>

	</form>




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