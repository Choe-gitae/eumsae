<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% String pjName = "/eumsae"; %>

<html>
<head>
<meta charset="UTF-8" />
<meta name="description" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>EUMSAE</title>
<!-- Favicon -->
<link rel="icon" href="<%=pjName%>/resources/images/favicon.ico" />
</head>
<body>

	<jsp:include page="../include/shopHeader.jsp" />

	<!-- ##### Hero Area Start ##### -->
	<section class="hero-area">
		<div class="hero-slides owl-carousel">
			<!-- Single Hero Slide -->
			<div
				class="single-hero-slide d-flex align-items-center justify-content-center">
				<!-- Slide Img -->
				<div class="slide-img bg-img"
					style="background-image: url(<%=pjName%>/resources/images/slide/slide-001.gif)"></div>
				<!-- Slide Content -->
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div class="hero-slides-content text-center">
								<h6 data-animation="fadeInUp" data-delay="100ms">Welcome to
									EUMSAE</h6>
								<h2 data-animation="fadeInUp" data-delay="300ms">
									Lastest Albums <span>Lastest Albums</span>
								</h2>
								<a data-animation="fadeInUp" data-delay="500ms" href="#"
									class="btn oneMusic-btn mt-50">Discover <i
									class="fa fa-angle-double-right"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Single Hero Slide 1-->
			<div
				class="single-hero-slide d-flex align-items-center justify-content-center">
				<!-- Slide Img -->
				<div class="slide-img bg-img"
					style="background-image: url(<%=pjName%>/resources/images/slide/slide-002.gif)"></div>
				<!-- Slide Content -->
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div class="hero-slides-content text-center">
								<h6 data-animation="fadeInUp" data-delay="100ms">Recommended
									from EUMSAE</h6>
								<h2 data-animation="fadeInUp" data-delay="300ms">
									Christmas Carol <span>Christmas Carol</span>
								</h2>
								<a data-animation="fadeInUp" data-delay="500ms" href="#"
									class="btn oneMusic-btn mt-50">Discover <i
									class="fa fa-angle-double-right"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Single Hero Slide 2-->
			<div
				class="single-hero-slide d-flex align-items-center justify-content-center">
				<!-- Slide Img -->
				<div class="slide-img bg-img"
					style="background-image: url(<%=pjName%>/resources/images/slide/slide-003.gif)"></div>
				<!-- Slide Content -->
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div class="hero-slides-content text-center">
								<h6 data-animation="fadeInUp" data-delay="100ms">Recommended
									from EUMSAE</h6>
								<h2 data-animation="fadeInUp" data-delay="300ms">
									Funk Music <span>Funk Music</span>
								</h2>
								<a data-animation="fadeInUp" data-delay="500ms" href="#"
									class="btn oneMusic-btn mt-50">Discover <i
									class="fa fa-angle-double-right"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### Hero Area End ##### -->

	<!-- ##### FEATURED NEW RELEASES Start ##### -->
	<section class="latest-albums-area section-padding-100">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-heading style-2">
						<p>Looking for something new?</p>
						<h2>FEATURED NEW RELEASES</h2>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-12 col-lg-9">
					<div class="ablums-text text-center mb-70">
						<p>Add to your growing collection. Nam tristique ex vel magna
							tincidunt, ut porta nisl finibus. Vivamus eu dolor eu quam varius
							rutrum. Fusce nec justo id sem aliquam fringilla nec non lacus.
							Suspendisse eget lobortis nisi, ac cursus odio. Vivamus nibh
							velit, rutrum at ipsum ac, dignissim iaculis ante. Donec in velit
							non elit pulvinar pellentesque et non eros.</p>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-12">
					<div class="albums-slideshow owl-carousel">
						<!-- Single Album -->
						<div class="single-album">
							<img src="resources/img/bg-img/a1.jpg" alt="" />
							<div class="album-info">
								<a href="#">
									<h5>Daft Punk</h5>
								</a>
								<p>Random Access Memories</p>
							</div>
						</div>

						<!-- Single Album -->
						<div class="single-album">
							<img src="resources/img/bg-img/a2.jpg" alt="" />
							<div class="album-info">
								<a href="#">
									<h5>Weekend</h5>
								</a>
								<p>Ranked Worst to Best</p>
							</div>
						</div>

						<!-- Single Album -->
						<div class="single-album">
							<img src="resources/img/bg-img/a3.jpg" alt="" />
							<div class="album-info">
								<a href="#">
									<h5>BTS</h5>
								</a>
								<p>Map Of The Soul 7</p>
							</div>
						</div>

						<!-- Single Album -->
						<div class="single-album">
							<img src="resources/img/bg-img/a4.jpg" alt="" />
							<div class="album-info">
								<a href="#">
									<h5>Black Pink</h5>
								</a>
								<p>Pink Venom</p>
							</div>
						</div>

						<!-- Single Album -->
						<div class="single-album">
							<img src="resources/img/bg-img/a5.jpg" alt="" />
							<div class="album-info">
								<a href="#">
									<h5>Eminem</h5>
								</a>
								<p>The MarShall Mathers LP</p>
							</div>
						</div>

						<!-- Single Album -->
						<div class="single-album">
							<img src="resources/img/bg-img/a6.jpg" alt="" />
							<div class="album-info">
								<a href="#">
									<h5>Drake</h5>
								</a>
								<p>Scolpion</p>
							</div>
						</div>

						<!-- Single Album -->
						<div class="single-album">
							<img src="resources/img/bg-img/a7.jpg" alt="" />
							<div class="album-info">
								<a href="#">
									<h5>Beyonce</h5>
								</a>
								<p>Songs</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### FEATURED NEW RELEASES End ##### -->

	<!-- ##### TOP SELLERS Start ##### -->
	<div class="add-area mb-100">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-heading style-2">
						<p>Looking for something hot?</p>
						<h2>TOP SELLERS</h2>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-12">
					<div class="albums-slideshow owl-carousel">
						<!-- Single Album -->
						<div class="single-album">
							<img src="resources/img/bg-img/a1.jpg" alt="" />
							<div class="album-info">
								<a href="#">
									<h5>Daft Punk</h5>
								</a>
								<p>Random Access Memories</p>
							</div>
						</div>

						<!-- Single Album -->
						<div class="single-album">
							<img src="resources/img/bg-img/a2.jpg" alt="" />
							<div class="album-info">
								<a href="#">
									<h5>Michael Jackson</h5>
								</a>
								<p>Thriller</p>
							</div>
						</div>

						<!-- Single Album -->
						<div class="single-album">
							<img src="resources/img/bg-img/a3.jpg" alt="" />
							<div class="album-info">
								<a href="#">
									<h5>BTS</h5>
								</a>
								<p>Butter</p>
							</div>
						</div>

						<!-- Single Album -->
						<div class="single-album">
							<img src="resources/img/bg-img/a4.jpg" alt="" />
							<div class="album-info">
								<a href="#">
									<h5>Black Pink</h5>
								</a>
								<p>Second Song</p>
							</div>
						</div>

						<!-- Single Album -->
						<div class="single-album">
							<img src="resources/img/bg-img/a5.jpg" alt="" />
							<div class="album-info">
								<a href="#">
									<h5>BK</h5>
								</a>
								<p>I wanna go home</p>
							</div>
						</div>

						<!-- Single Album -->
						<div class="single-album">
							<img src="resources/img/bg-img/a7.jpg" alt="" />
							<div class="album-info">
								<a href="#">
									<h5>Beyonce</h5>
								</a>
								<p>Songs</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### TOP SELLERS End ##### -->

	<!-- ##### Featured Artist Area Start ##### -->
	<div class="add-area mb-100">
		<section
			class="featured-artist-area section-padding-100 bg-img bg-overlay bg-fixed"
			style="background-image: url(resources/img/bg-img/bg-04.PNG)">
			<div class="container">
				<div class="row align-items-end">
					<div class="col-12 col-md-5 col-lg-4">
						<div class="featured-artist-thumb">
							<img src="resources/img/bg-img/fa.jpg" alt="" />
						</div>
					</div>
					<div class="col-12 col-md-7 col-lg-8">
						<div class="featured-artist-content">
							<!-- Section Heading -->
							<div class="section-heading white text-left mb-30">
								<p>See what’s new</p>
								<h2>THE ROLLING STRONES</h2>
							</div>
							<p>Nam tristique ex vel magna tincidunt, ut porta nisl
								finibus. Vivamus eu dolor eu quam varius rutrum. Fusce nec justo
								id sem aliquam fringilla nec non lacus. Suspendisse eget
								lobortis nisi, ac cursus odio. Vivamus nibh velit, rutrum at
								ipsum ac, dignissim iaculis ante. Donec in velit non elit
								pulvinar pellentesque et non eros.</p>
							<div class="song-play-area">
								<div class="song-name">
									<p>01. Main Hit Song</p>
								</div>
								<audio preload="auto" controls>
									<source src="audio/dummy-audio.mp3" />
								</audio>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- ##### Featured Artist Area End ##### -->

	<!-- ##### Add Area Start ##### -->
	<div class="add-area mb-100">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="adds">
						<a href="#"><img src="resources/img/bg-img/add4.gif" alt="" /></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Add Area End ##### -->

	<!-- ##### Contact Area Start ##### -->
	<section
		class="contact-area section-padding-100 bg-img bg-overlay bg-fixed has-bg-img"
		style="background-image: url(img/bg-img/bg-2.jpg)">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-heading white">
						<p>See what’s new</p>
						<h2>CONTACT US</h2>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-12">
					<!-- Contact Form Area -->
					<div class="contact-form-area">
						<form action="#" method="post">
							<div class="row">
								<div class="col-md-6 col-lg-4">
									<div class="form-group">
										<input type="text" class="form-control" id="name"
											placeholder="Name" />
									</div>
								</div>
								<div class="col-md-6 col-lg-4">
									<div class="form-group">
										<input type="email" class="form-control" id="email"
											placeholder="E-mail" />
									</div>
								</div>
								<div class="col-lg-4">
									<div class="form-group">
										<input type="text" class="form-control" id="subject"
											placeholder="Subject" />
									</div>
								</div>
								<div class="col-12">
									<div class="form-group">
										<textarea name="message" class="form-control" id="message"
											cols="30" rows="10" placeholder="Message"></textarea>
									</div>
								</div>
								<div class="col-12 text-center">
									<button class="btn oneMusic-btn mt-30" type="submit">
										Send <i class="fa fa-angle-double-right"></i>
									</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### Contact Area End ##### -->

	<jsp:include page="../include/shopFooter.jsp"></jsp:include>

</body>
</html>