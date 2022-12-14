<%-- 
    Document   : Room
    Created on : Nov 4, 2022, 10:48:22 AM
    Author     : ASUS-PRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Room</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/main.css">
        <link rel="stylesheet" hre="assets/css/responsive-style.css">
        <link rel="stylesheet" href="./assets/css/room.css">

    </head>

    <body>
        <div id="container">
            <!-- header -->
            <jsp:include page="Header.jsp"></jsp:include>
                <!-- header -->
                <!-- home background -->
                <div id="home-background">
                    <!-- home -->
                    <div class="background">
                        <!-- home background-->
                    </div>
                    <div class="title">
                        <!-- home title-->
                        <h1 style="color: #fff">BLOG</h1>
                    </div>
                </div>

                <!-- search -->

                <!-- content -->
                <div class="row">
                    <div class="leftcolumn">
                        <div class="card">
                            <a class="linkBlog" href="https://www.ivivu.com/blog/2013/09/du-lich-da-nang-cam-nang-tu-a-den-z/"><h2>Visiting Da Nang & Quang Nam</h2></a>
                            <h5>Tip, Dec 7, 2022</h5>
                            <div class="leftimg" style="height: 200px">
                                <img class="realimg" src="assets/img/link/12.jpg" alt="" />
                            </div>
                            <p>
                                Du l???ch ???? N???ng v???i c???m nang ?????y ????? v?? s??c t??ch nh???t t??? iVIVU. C???m
                                nang du l???ch ???? N???ng gi???i thi???u c??c ??i???m ?????n th?? v??? v?? m??n ??n ngon
                                khi ??? th??nh ph??? mi???n Trung n??y.
                            </p>
                        </div>
                        <div class="card">
                            <a class="linkBlog" href="https://vinpearl.com/vi/top-15-cho-da-nang-noi-tieng-hap-dan-nhat-dinh-phai-ghe-tham"><h2>Favorite Markets in Da Nang</h2></a>
                            <h5>Title description, Sep 2, 2022</h5>
                            <div class="leftimg" style="height: 200px">
                                <img class="realimg" src="assets/img/link/2.jpg" alt="" />
                            </div>
                            <p>
                                Gh?? th??m c??c ch??? ???? N???ng l?? tr???i nghi???m v?? c??ng h???p d???n d??nh cho c??c
                                t??n ????? ???m th???c. C??ng b??? t??i 15 khu ch??? n???i ti???ng v?? h???p d???n b???c nh???t
                                t???i th??nh ph??? bi???n s??i ?????ng ngay th??i n??o!
                            </p>
                        </div>
                        <div class="card">
                            <a class="linkBlog" href="https://vinpearl.com/vi/moi-nhat-2022-kinh-nghiem-du-lich-da-nang-choi-gi-an-gi-o-dau"><h2>Experience to Danang</h2></a>
                            <h5>Title description, Sep 2, 2022</h5>
                            <div class="leftimg" style="height: 200px">
                                <img class="realimg" src="assets/img/link/3.jpg" alt="" />
                            </div>
                            <p>
                                Kinh nghi???m du l???ch ???? N???ng - th??nh ph??? ????ng s???ng nh???t nh???t Vi???t Nam
                                d??nh cho b???n: ??n g??, ch??i g??, ??? ????u, l???ch tr??nh du l???ch ???? N???ng chi
                                ti???t nh???t.
                            </p>
                        </div>
                    </div>
                    <div class="rightcolumn">
                        <div class="card">
                            <a class="linkBlog" href="https://www.ivivu.com/blog/2013/09/du-lich-da-nang-cam-nang-tu-a-den-z/"><h2>8 Tips for Packing a Stylish Travel Wardrobe</h2></a>
                            <div class="rightimg" style="height: 100px"><img class="realimg" src="assets/img/link/4.jpg" alt="" /></div>
                            <p>Du l???ch ???? N???ng: C???m nang t??? A ?????n Z (Update th??ng 7/2022)</p>
                        </div>
                        <div class="card">
                            <a class="linkBlog" href="https://www.adventureinyou.com/vietnam/vietnam-by-motorbike-route/"><h2>Travelling by motobike is the BEST</h2></a>
                            <div class="rightimg"><img class="realimg" src="assets/img/link/5.jpg" alt="" /></div>
                            <br />
                            <div class="rightimg"><img class="realimg" src="assets/img/link/6.jpg" alt="" /></div>
                            <br />
                            <div class="rightimg"><img class="realimg" src="assets/img/link/8.jpg" alt="" /></div>
                        </div>
                    </div>
                </div>
                <!-- Footer -->
            <jsp:include page="Footer.jsp"></jsp:include>
            <!-- Footer Section Begin -->

        </div>
    </body>

</html>