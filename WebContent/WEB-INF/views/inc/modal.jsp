<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="myModal" class="modal">
	<!-- Modal content -->
	<div class="join-container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<span class="close">&times;</span>
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link">로그인</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="register-form-link">회원가입</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="list"
									method="post" role="form" style="display: block;">
									<div class="form-group">
										<input type="text" name="username" id="uid" tabindex="1"
											class="form-control" placeholder="아이디" value="">
									</div>
									<div class="form-group">
										<input type="password" name="password" id="pwd" tabindex="2"
											class="form-control" placeholder="비밀번호">
									</div>
									<div class="form-group text-center">
										<input type="checkbox" tabindex="3" class="" name="remember"
											id="remember"> <label for="remember"> 정보 저장</label>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit"
													tabindex="4" class="form-control btn btn-login"
													value="Log In">
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="https://phpoll.com/recover" tabindex="5"
														class="forgot-password">비밀번호 찾기</a>
												</div>
											</div>
										</div>
									</div>
								</form>
								<form id="register-form"
									action="list" method="post"
									role="form" style="display: none;">
									<div class="form-group">
										<input type="text" name="reg-uid" id="userid" tabindex="1"
											class="form-control" placeholder="아이디" value="">
									</div>
									<div class="form-group">
										<input type="text" name="name" id="name" tabindex="2"
											class="form-control" placeholder="이름">
									</div>
									<div class="form-group">
										<input type="text" name="nicname" id="nicname" tabindex="2"
											class="form-control" placeholder="닉네임">
									</div>

									<div class="form-group">
										<input type="password" name="reg-pwd" id="reg-pwd"
											tabindex="2" class="form-control" placeholder="비밀번호" value="">
									</div>
									<div class="form-group">
										<input type="password" name="confirm-pwd" id="confirm-pwd"
											tabindex="2" class="form-control" placeholder="비밀번호 확인"
											value="">
									</div>
										<div class="form-group">
										<input type="text" name="phone" id="phne" tabindex="1"
											class="form-control" placeholder="핸드폰" value="">
									</div>
									<div class="form-group">
										<input type="email" name="email" id="email" tabindex="1"
											class="form-control" placeholder="이메일" value="">
									</div>
									<div class="form-group">
										<input type="date" name="birth" id="birth" tabindex="2"
											class="form-control" min='1899-01-01' max='2018-12-31'>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit"
													id="register-submit" tabindex="4"
													class="form-control btn btn-register" value="Register Now">
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>