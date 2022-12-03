<%-- 
    Document   : blog
    Created on : Nov 3, 2022, 8:18:05 PM
    Author     : ASUS-PRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!--link boodstrap-->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <link rel="stylesheet" href="assets/css/main.css" />
    <link rel="stylesheet" hre="assets/css/responsive-style.css" />
    <title>Hotel</title>
  </head>
  <body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="100">
    <!-- 1.header-section Begin -->

    <header class="header-section">
      <div class="top-nav">
        <div class="container">
          <div class="row">
            <div class="col-lg-6">
              <ul class="tn-left">
                <li>
                  <i class="fa fa-phone"></i>
                  (+84) 345678910
                </li>
                <li>
                  <i class="fa fa-envelope"></i>
                  Bookinghotel.com.vn
                </li>
              </ul>
            </div>
            <div class="col-lg-6">
              <div class="tn-right">
                <div class="top-social">
                  <a href="#"><i class="fa fa-facebook-f"></i></a>
                  <a href="#"><i class="fa fa-twitter"></i></a>
                  <a href="#"><i class="fa fa-tripadvisor"></i></a>
                  <a href="#"><i class="fa fa-instagram"></i></a>
                </div>
                <a href="#" class="bk-btn">Booking Now</a>
                <div class="language-option">
                  <img src="assets/img/flag.png" alt="" />
                  <span>VN <i class="fa fa-angle-down"></i></span>
                  <div class="flag-dropdown">
                    <ul>
                      <li><a href="#">VN</a></li>
                      <li><a href="#">EN</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="menu-item">
        <div class="container">
          <div class="row">
            <div class="col-lg-2">
              <div class="logo">
                <a class="navbar-brand" href="#">
                  <img
                    src="assets/img/logo.png"
                    width="50%"
                    height="10%"
                    class="img-thumbnail"
                    alt="logo"
                  />
                </a>
              </div>
            </div>
            <div class="col-lg-10">
              <div class="nav-menu">
                <nav class="mainmenu">
                  <ul>
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="room.html">Rooms</a></li>
                    <li><a href="about.html">About Us</a></li>
                    <li>
                      <a href="#">Pages</a>
                      <ul class="dropdown">
                        <li><a href="#">Room Details</a></li>
                        <li><a href="#">Blog Details</a></li>
                        <li><a href="#">Family Room</a></li>
                        <li><a href="#">Premium Room</a></li>
                      </ul>
                    </li>
                    <li><a href="blog.html">News</a></li>
                    <li><a href="contact.html">Contact</a></li>
                  </ul>
                </nav>
                <div class="nav-right search-switch">
                  <i class="fa fa-search"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- 1.header-section End -->

    <!-- 2.Detail Section begin -->
   
    <div class="row">
      <div class="leftcolumn">
        <div class="card">
          <a
            class="linkBlog"
            href="https://www.ivivu.com/blog/2013/09/du-lich-da-nang-cam-nang-tu-a-den-z/"
            ><h2>Visiting Da Nang & Quang Nam</h2></a
          >
          <h5>Tip, Dec 7, 2022</h5>
          <div class="leftimg" style="height: 200px">
            <img class="realimg" src="assets/img/link/12.jpg" alt="" />
          </div>
          <p>
            Du lịch Đà Nẵng với cẩm nang đầy đủ và súc tích nhất từ iVIVU. Cẩm
            nang du lịch Đà Nẵng giới thiệu các điểm đến thú vị và món ăn ngon
            khi ở thành phố miền Trung này.
          </p>
        </div>
        <div class="card">
          <a
            class="linkBlog"
            href="https://vinpearl.com/vi/top-15-cho-da-nang-noi-tieng-hap-dan-nhat-dinh-phai-ghe-tham"
            ><h2>Favorite Markets in Da Nang</h2></a
          >
          <h5>Title description, Sep 2, 2022</h5>
          <div class="leftimg" style="height: 200px">
            <img class="realimg" src="assets/img/link/2.jpg" alt="" />
          </div>
          <p>
            Ghé thăm các chợ Đà Nẵng là trải nghiệm vô cùng hấp dẫn dành cho các
            tín đồ ẩm thực. Cùng bỏ túi 15 khu chợ nổi tiếng và hấp dẫn bậc nhất
            tại thành phố biển sôi động ngay thôi nào!
          </p>
        </div>
        <div class="card">
          <a
            class="linkBlog"
            href="https://vinpearl.com/vi/moi-nhat-2022-kinh-nghiem-du-lich-da-nang-choi-gi-an-gi-o-dau"
            ><h2>Experience to Danang</h2></a
          >
          <h5>Title description, Sep 2, 2022</h5>
          <div class="leftimg" style="height: 200px">
            <img class="realimg" src="assets/img/link/3.jpg" alt="" />
          </div>
          <p>
            Kinh nghiệm du lịch Đà Nẵng - thành phố đáng sống nhất nhất Việt Nam
            dành cho bạn: ăn gì, chơi gì, ở đâu, lịch trình du lịch Đà Nẵng chi
            tiết nhất.
          </p>
        </div>
      </div>
      <div class="rightcolumn">
        <div class="card">
          <a class="linkBlog" href="https://www.ivivu.com/blog/2013/09/du-lich-da-nang-cam-nang-tu-a-den-z/"><h2>8 Tips for Packing a Stylish Travel Wardrobe</h2></a>
          <div class="rightimg" style="height: 100px"><img class="realimg" src="assets/img/link/4.jpg" alt="" /></div>
          <p>Du lịch Đà Nẵng: Cẩm nang từ A đến Z (Update tháng 7/2022)</p>
        </div>
        <div class="card">
          <a
            class="linkBlog"
            href="https://www.adventureinyou.com/vietnam/vietnam-by-motorbike-route/"
            ><h2>Travelling by motobike is the BEST</h2></a
          >
          <div class="rightimg"><img class="realimg" src="assets/img/link/5.jpg" alt="" /></div>
          <br />
          <div class="rightimg"><img class="realimg" src="assets/img/link/6.jpg" alt="" /></div>
          <br />
          <div class="rightimg"><img class="realimg" src="assets/img/link/8.jpg" alt="" /></div>
        </div>
      </div>
    </div>

    <!-- 2.Detail Section End -->

    <!-- 3.Footer Section Begin -->
    <footer class="footer-section">
      <div class="container">
        <div class="footer-text">
          <div class="row">
            <div class="col-lg-4">
              <div class="ft-about">
                <div class="logo">
                  <a href="#">
                    <img src="" alt="" />
                  </a>
                </div>
                <p>
                  We inspire and reach millions of travelers<br />
                  across 10 local websites
                </p>
                <div class="fa-social">
                  <a href="#"><i class="fa fa-facebook"></i></a>
                  <a href="#"><i class="fa fa-twitter"></i></a>
                  <a href="#"><i class="fa fa-tripadvisor"></i></a>
                  <a href="#"><i class="fa fa-instagram"></i></a>
                  <a href="#"><i class="fa fa-youtube-play"></i></a>
                </div>
              </div>
            </div>
            <div class="col-lg-3 offset-lg-1">
              <div class="ft-contact">
                <h6>Contact Us</h6>
                <ul>
                  <li>(+84) 345678910</li>
                  <li>Bookinghotel.com.vn</li>
                  <li>54 Thanh Thai,Khue Trung,Cam Le, Da Nang, Viet Nam</li>
                </ul>
              </div>
            </div>
            <div class="col-lg-3 offset-lg-1">
              <div class="ft-newslatter">
                <h6>New latest</h6>
                <p>Get the latest updates and offers.</p>
                <form action="#" class="fn-form">
                  <input type="text" placeholder="Email" />
                  <button type="submit"><i class="fa fa-send"></i></button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- 3.Footer Section End -->

    <script src="js/main.js"></script>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
  </body>
</html>