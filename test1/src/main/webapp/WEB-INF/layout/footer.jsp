<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<!--     <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge"> -->
    <title>푸터</title>
<!-- 
    Google Font
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    Css Styles
    <link rel="stylesheet" href="css/bootstrap-min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome-min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui-min.css" type="text/css">
    <link rel="stylesheet" href="css/owl-carousel-min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav-min.css" type="text/css">
    <link rel="stylesheet" href="css/style2.css" type="text/css"> -->
</head>
<body>
    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="/customerService.do"><img src="img/logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>고객행복센터</li>
                            <li>1644-1107</li>
                            <li>월-금 오전 10시 - 오후 10시</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>A소개   이용약관   개인정보처리방침  이용안내</h6>
                        <ul>
                          <li><a href="javascript:;">서비스</a></li>
                          <li><a href="/customerService.do">고객지원</a></li>
                          <li><a href="javascript:;">사업자등록번호</a></li>
                      </ul>
                      <ul>
                          <li><a href="javascript:;">입점문의</a></li>
                          <li><a href="javascript:;">채용문의</a></li>
                          <li><a href="javascript:;">회사정보</a></li>
                          <li><a href="javascript:;">개인 정보 정책</a></li>
                      </ul>
                      
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>뉴스레터 구독해주세요</h6>
                        <p>최신 상점과 특별 제안에 대한 이메일 업데이트를 받으세요.</p>
                        <form action="javascript:;">
                            <input type="text" placeholder="이메일을 입력해주세요">
                            <button type="submit" class="site-btn">구독하기</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a>
                            <a href="https://twitter.com/"><i class="fa fa-instagram"></i></a>
                            <a href="https://www.linkedin.com/"><i class="fa fa-twitter"></i></a>
                            <a href="https://www.pinterest.co.kr/"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text">
                        	<p>Copyright &copy;
                        		<!-- <script>document.write(new Date().getFullYear());</script> -->
                        		<%= new java.util.Date().toLocaleString().substring(0, 4) %> 
                        		All rights reserved | <i class="fa fa-heart" aria-hidden="true"></i> by 
                        		<a href="javascript:;" target="_blank">A조 마켓</a>
                        	</p>
                        </div>
                        <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->
    
	<!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
   	<script src="js/jquery.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    
</body>
<script type="text/javascript">
/* 	var app = new Vue({
	    el: '#app',
	    data: {
	    	emailInput: ""
	    }
	    , methods: {
	    	fnSubscribe: function() {
	            var self = this;
	            alert("구독되었습니다!");
	            self.emailInput = "";
	        }
	    }
	    , created: function() {
	    	var self = this;
		}
	}); */
</script>
</html>