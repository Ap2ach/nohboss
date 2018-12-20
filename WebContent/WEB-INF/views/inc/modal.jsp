<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
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
								<form id="login-form" action="login" method="post" role="form" style="display: block;" >
									<div class="form-group">
										<input type="text" name="username" id="uid" tabindex="1" class="form-control" placeholder="아이디" value="">
									</div>
									<div class="form-group">
										<input type="password" name="password" id="pwd" tabindex="2" class="form-control" placeholder="비밀번호">
									</div>
									<div class="form-group text-center">
										<input type="checkbox" tabindex="3" class="" name="remember" id="remember"> <label for="remember"> 정보 저장</label>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="button" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login"
												 value="Log In" onclick="login()">
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="" tabindex="5" class="forgot-password">비밀번호 찾기</a>
												</div>
											</div>
										</div>
									</div>
								</form>
							
									   <form id="register-form" method="post" action="list" name="userInfo" onsubmit="return checkValue()" class="hidden">
									<div class="form-group dupleId">
										<input type="text" name="reg-uid" id="id" tabindex="1" class="form-control" placeholder="아이디" value="" onkeydown="inputIdChk()">
										<input type="button" name="dupl-check" id="duplchk" value="중복확인" class="form-control btn btn-register" onclick="openIdChk()" />
										<input type="hidden" name="idDuplication" value="idUncheck" >
									</div>
									<div class="form-group">
										<input type="text" name="name" id="name" tabindex="2" class="form-control" placeholder="이름">
									</div>
									<div class="form-group">
										<input type="text" name="nicname" id="nicname" tabindex="3" class="form-control" placeholder="닉네임">
									</div>

									<div class="form-group">
										<input type="password" name="reg-pwd" id="reg-pwd" tabindex="4" class="form-control" placeholder="비밀번호" value="">
									</div>
									<div class="form-group">
										<input type="password" name="confirm-pwd" id="confirm-pwd" tabindex="5" class="form-control" placeholder="비밀번호 확인"
										 value="">
									</div>
									<div class="form-group">
										<input type="text" name="phone" id="phone" tabindex="6" class="form-control" minlength="12" maxlength="13"
										 placeholder="핸드폰" value="" pattern="^01(?:0|1|[6-9])-(?:\d{3}|\d{4})-\d{4}$">
									</div>
									<div class="form-group">
										<input type="email" name="email" id="email" tabindex="7" class="form-control" placeholder="이메일" value="">
									</div>
									<div class="form-group">
										<input type="date" name="birth" id="birth" tabindex="8" class="form-control" min='1899-01-01' max='2018-12-31'>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" tabindex="9" class="form-control btn btn-register"
												 value="Register Now">
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