<%-- 
    Document   : changePass
    Created on : Jun 13, 2021, 3:37:05 AM
    Author     : thanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style12.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap" rel="stylesheet">
        <script src="js/abc.js"></script>
        <title>Document</title>
    </head>
    <body>
        <div class="main">
            <form action="changepass" method="post">
                <span class="title">Đổi mật khẩu mới</span>
                <span class="title2">Mật khẩu cũ</span>
                <input name="pass" class="txtpass" type="password">
                <span class="title3">Mật khẩu mới</span>
                <input name="newpass" class="txtnewpass" type="password">
                <button class="btn1">Xác nhận</button>
            </form>

            <a href="adminHome.jsp">
                <button class="btn2" >Hủy bỏ</button>
            </a>
        </div>
    </body>
</html>