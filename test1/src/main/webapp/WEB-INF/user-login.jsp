<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<!-- <link rel="stylesheet" href="../css/join-login.css"> -->
	<script src="js/jquery.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<title>로그인 페이지</title>
</head>
<style>
.con-login {
	border: 1px solid #ddd;
	background-color: white;
	border-radius: 5px;
	margin: 200px auto;
	width: 300px;
}
.login-title {
	text-align: center;
	font-size: 15px;
	font-weight: bold;
	margin: 25px;
}
.login-input {
	width: 255px;
	height: 40px;
	border: 2px solid #ddd;
	border-radius: 5px;
	margin-left: 10px;
	padding-left: 20px;
}
.login-input::placeholder {
	font-size: 12px;
	color: #999;
}
.find-align {
	text-align: right;
	padding-right: 15px;
	line-height: 0px;
}
.login-btn {
	width: 255px;
	height: 40px;
	margin-left: 10px;
	background-color: #2c9d59;
	color: white;
	font-weight: bold;
	cursor: pointer;
	border: 1px solid #2c9d59;
	margin-top: 10px;
}
.login-btn-alter {
	background-color: white;
	color: #2c9d59;
	margin-bottom: 10px;
}
.login-text {
	text-decoration: none;
	font-size: 11px;
	color: black;
	letter-spacing: -1px;
}
</style>
<body>
	<!-- header -->
	<%@ include file="layout/header.jsp"%>
	<div id="app">
		<fieldset class="con-login">
			<div class="login-title" style="margin: 10px;">로그인</div>
			<div style="margin: 10px;" class="inputBox">
				<input type="text" class="login-input" v-model="userId" placeholder="아이디를 입력해 주세요" maxlength="20">
			</div>
			<div style="margin: 10px;">
				<input type="password" class="login-input" v-model="userPw" @keyup.enter="fnLogin" placeholder="비밀번호를 입력해 주세요" maxlength="16">
			</div>
			<div class="find-align" style="margin: 10px;">
				<a class="login-text" href="/find-password.do" @click.prevent="fnOpenPopup('password')">비밀번호 찾기</a>
			</div>
			<div style="margin: 10px;">
				<button class="login-btn" @click="fnLogin">로그인</button>
				<button class="login-btn login-btn-alter" @click="fnJoin">회원가입</button>
			</div>
			<div style="margin: 10px;">
				<!-- <div style="margin-top: 0px;"><a href="javascript:;" @click="fnKakao" style="margin-left: 10px;"><img alt="kakao_login" src="../img/kakao/kakao_login_medium_wide.png" width="255px;"></a></div> -->
			</div>
			<div style="color: red; margin-left: 20px;">{{resultMessage}}</div>
		</fieldset>
	</div>
	<!-- footer -->
	<%@ include file="layout/footer.jsp"%>
</body>
<script type="text/javascript">
var app = new Vue({
    el: '#app',
    data: {
    	userId: "",
    	userPw: "",
    	resultMessage: ""
    }
    , methods: {
    	fnLogin: function() {
            var self = this;
            if(self.userId == "") {
            	self.resultMessage = "아이디를 입력해 주세요!";
            	return;
            }
            if(self.userPw == "") {
            	self.resultMessage = "비밀번호를 입력해 주세요!";
            	return;
            }
            var nparmap = {
            		userId: self.userId,
            		userPw: self.userPw
            };
            $.ajax({
                url:"user-login.dox",
                dataType:"json",
                type: "POST",
                data: nparmap,
                success: function(data) {
                	if(data.result == "success") {
                		self.resultMessage = "";
                		alert(data.message);
                		$.pageChange("/header.do", {});
                	} else if(data.result == "fail") {
                		//self.resultMessage = "없는 아이디 또는 비밀번호입니다!";
                		self.resultMessage = data.message;
                	}
                }
            });
        },
        fnJoin: function() {
        	$.pageChange("/user-join.do", {});
        },
        fnOpenPopup: function(kind) {
        	if(kind == 'password') {
          		// 비밀번호 찾기 팝업을 창의 상단 중앙에 위치시키기 위해 창의 크기와 화면 크기를 이용하여 위치 조정
	       		var leftPosition = (window.screen.width / 2) - (600 / 2);
	       		var topPosition = (window.screen.height / 2) - (400 / 2);
	       		window.open('/find-password.do', '_blank', 'width=600,height=400, left=' + leftPosition + ',top=' + topPosition);
        	}
        }
    }
    , created: function() {
    	var self = this;
	}
});

$(document).ready(function() {
    var $loginBox = $('.outBox');
    var $loginInputBox = $('#sampleId');

    $loginInputBox.on('keyup', function() {
        if ($(this).val() !== '') {
            // 입력 값이 비어 있지 않은 경우
            $loginBox.addClass('existence');
        } else {
            // 입력 값이 비어 있는 경우
            $loginBox.removeClass('existence');
        }
    });
});
</script>
</html>
