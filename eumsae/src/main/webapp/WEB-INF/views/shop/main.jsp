<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% String pjName = "/eumsae"; %>

<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="description" content="" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
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
        <div class="single-hero-slide d-flex align-items-center justify-content-center">
          <!-- Slide Img -->
          <div
            class="slide-img bg-img"
            style="background-image: url(<%=pjName%>/resources/images/slide/slide-001.gif)"
          ></div>
          <!-- Slide Content -->
          <div class="container">
            <div class="row">
              <div class="col-12">
                <div class="hero-slides-content text-center">
                  <h6 data-animation="fadeInUp" data-delay="100ms">Welcome to EUMSAE</h6>
                  <h2 data-animation="fadeInUp" data-delay="300ms">
                    Lastest Albums <span>Lastest Albums</span>
                  </h2>
                  <a
                    data-animation="fadeInUp"
                    data-delay="500ms"
                    href="#"
                    class="btn oneMusic-btn mt-50"
                    >Discover <i class="fa fa-angle-double-right"></i
                  ></a>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Single Hero Slide 1-->
        <div class="single-hero-slide d-flex align-items-center justify-content-center">
          <!-- Slide Img -->
          <div
            class="slide-img bg-img"
            style="background-image: url(<%=pjName%>/resources/images/slide/slide-002.gif)"
          ></div>
          <!-- Slide Content -->
          <div class="container">
            <div class="row">
              <div class="col-12">
                <div class="hero-slides-content text-center">
                  <h6 data-animation="fadeInUp" data-delay="100ms">Recommended from EUMSAE</h6>
                  <h2 data-animation="fadeInUp" data-delay="300ms">
                    Christmas Carol <span>Christmas Carol</span>
                  </h2>
                  <a
                    data-animation="fadeInUp"
                    data-delay="500ms"
                    href="#"
                    class="btn oneMusic-btn mt-50"
                    >Discover <i class="fa fa-angle-double-right"></i
                  ></a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Single Hero Slide 2-->
        <div class="single-hero-slide d-flex align-items-center justify-content-center">
          <!-- Slide Img -->
          <div
            class="slide-img bg-img"
            style="background-image: url(<%=pjName%>/resources/images/slide/slide-003.gif)"
          ></div>
          <!-- Slide Content -->
          <div class="container">
            <div class="row">
              <div class="col-12">
                <div class="hero-slides-content text-center">
                  <h6 data-animation="fadeInUp" data-delay="100ms">Recommended from EUMSAE</h6>
                  <h2 data-animation="fadeInUp" data-delay="300ms">
                    Funk Music <span>Funk Music</span>
                  </h2>
                  <a
                    data-animation="fadeInUp"
                    data-delay="500ms"
                    href="#"
                    class="btn oneMusic-btn mt-50"
                    >Discover <i class="fa fa-angle-double-right"></i
                  ></a>
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
              <p>
                Add to your growing collection. Nam tristique ex vel magna tincidunt, ut porta nisl
                finibus. Vivamus eu dolor eu quam varius rutrum. Fusce nec justo id sem aliquam
                fringilla nec non lacus. Suspendisse eget lobortis nisi, ac cursus odio. Vivamus
                nibh velit, rutrum at ipsum ac, dignissim iaculis ante. Donec in velit non elit
                pulvinar pellentesque et non eros.
              </p>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-12">
            <div class="albums-slideshow owl-carousel">
            
              <c:forEach var="list" items="${new}">
              <!-- Single Album -->
              <div class="single-album">
                <img src="<%=pjName%>/resources/lpImg/${list.cjpg}.jpg" />
                <div class="album-info">
                  <a href="detail?infono=${list.infono}">
                    <h5>${list.singer}</h5>
                  </a>
                  <p>${list.title}</p>
                </div>
              </div>
              </c:forEach>
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
            
              <c:forEach var="list" items="${best}">
              <c:if test="${not empty list}">
              <!-- Single Album -->
              <div class="single-album">
                <img src="<%=pjName%>/resources/lpImg/${list.cjpg}.jpg" />
                <div class="album-info">
                  <a href="detail?infono=${list.infono}">
                    <h5>${list.singer}</h5>
                  </a>
                  <p>${list.title}</p>
                </div>
              </div>
              </c:if>
              </c:forEach>

            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- ##### TOP SELLERS End ##### -->

    <jsp:include page="../include/shopFooter.jsp"></jsp:include>
  </body>
</html>
