<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String pjName= "/eumsae/resources/"; %>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>EUMSAE</title>

    <!-- Favicon -->
    <link rel="icon" href="resources/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="resources/00-one-music-gh-pages/css/style.css">

</head>

<body>
   
    <!-- ##### Blog Area Start ##### -->
    <div class="blog-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-9">

                    <!-- Single Post Start -->
                    <div class="single-blog-post mb-100 wow fadeInUp" data-wow-delay="100ms">
                        <!-- Post Thumb -->
                        <div class="blog-post-thumb mt-30">
                            <img src="resources/lpimages/kor/80/k80a.jpg" alt=""><br> <!-- 눌렀을 때, src /kor/80/k80a 를 변경시켜야 함 -->
                        </div>
                        <div class="song-play-area">
                            <div class="song-name">
                                <p>TITLE</p>
                            </div>
                            <audio preload="auto" controls>
                                <source src="resources/00-one-music-gh-pages/audio/dummy-audio.mp3">
                            </audio>
                        </div>

                         <!-- Blog Content -->
                        <div class="blog-content">
                            <!-- Post Title -->
                            <a href="#" class="post-title"> LP 제목 (ex) 김현식 3집</a>
                            <!-- Post Meta -->
                            <div class="post-meta d-flex mb-30">
                                <p class="post-author">By 장르</p>
                                <p class="tags">in 연대</p>
                                <p class="tags"> 분야 :  </p>    <!--  국내면 국내 해외면 해외를 여기에 표기를 할까 고민중... -->
                            </div>                           
                        </div>
                    </div>                    

                <div class="col-12 col-lg-3">
                    <div class="blog-sidebar-area">                                   

                        <!-- Widget Area -->
                     <table border='2'>
							<tr>
									<td> 가격   </td> 	<td> 가격(DB)</td>
							</tr>
							<tr>		   
									<td> 배송비  </td>    <td> 배송비(DB)</td>														
							</tr>											
						</table>
						
						<br>
						
                        <button type="submit"> 장 바 구 니 </button>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Blog Area End ##### -->   

     <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="resources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="resources/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="resources/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="resources/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="resources/js/active.js"></script>
</body>
</html>