<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<jsp:useBean id="Employee" class="Dao.RoomDAO1"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap" rel="stylesheet">
        <script src="js/abc.js"></script>
        <title>Document</title>
    </head>
    <body>
        <div class="main">
            <form action="updateRoom" method="POST">
                <span class="title">Chỉnh sửa phòng</span>
                <span class="title2">Tên phòng</span>
                <input value="${pro.name}" name="name" class="txtname" type="text">
  	
                <span class="title5">Mô tả</span>
                <input value="${pro.description}" name="description" class="txtndshort" type="text">
                <span class="title6">Giá tiền</span>
                <input value="${pro.price}" name="price" class="txtprice" type="text">
                <span class="title4">Ảnh</span>
                <input value="${pro.images}" name="images" class="txtimg" type="text"/>
                <span class="title7">RoomID</span>
                <input value="${pro.id}" name="id" class="txtid" type="text" readonly="">              
                <button type="submit" class="btn1">Xác nhận</button>
                <button class="btn2" >Hủy bỏ</button> 

            </form>


        </div>
    </body>
</html>
