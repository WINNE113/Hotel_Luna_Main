<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style10.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap" rel="stylesheet">

        <title>Document</title>
    </head>
    <body>
        <div class="main">
            <form action="addEvent" method="post">
                <span class="title">Tạo chương trình mới</span>
                <span class="title2">Tên chương trình</span>
                <input name="title" class="txtname" type="text">
                <span class="title3">Mô tả chương trình</span>
                <input name="details" class="txtndshort" type="text">
                <span class="title4">Thêm Ảnh</span>
                <input name="images" class="txtimg" type="text"/>
                <span class="title5">Phần Trăm Giảm Giá</span>
                <input name="percent" class="txtprice" type="text"/>
                <button class="btn1">Xác nhận</button>
                <button class="btn2" >Hủy bỏ</button>
            </form>


        </div>
    </body>
</html>