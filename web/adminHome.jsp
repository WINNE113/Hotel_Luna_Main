<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap" rel="stylesheet">
        <title>Document</title>
        <style type="text/css">
            table, th, td{
                border:1px solid #ccc;
            }
            table{
                border-collapse:collapse;
                width:100%;
            }
            th,td{
                text-align:center;
                padding:5px;
            }
        </style>
    </head>
    <body>
        <div class="main">
            <div class="left">
                <div class="logo">
                    <img src="assets/img/logo.png" alt="logo" width="80px" height="80px">
                </div>
                <span class="name">LUNA HOTEL</span>

                <div class="menu1">
                    <span class="title1"> Quản lí </span>
                    <div class="item1">
                        <i class="far fa-folder"></i>
                        <a class="title2" href="adminhome">Quản lí tài khoản</a>
                    </div>
                    <div class="item2">
                        <i class="far fa-file"></i>
                        <a class="title3" href="manageRoom">Quản lí phòng</a>
                    </div>
                    <div class="item3">
                        <i class="far fa-envelope"></i>
                        <a class="title4" href="manageEmployee">Quản lí nhân viên</a>
                    </div>
                    <div class="item10">
                        <i class="fas fa-tag"></i>
                        <a class="title4" href="manageEvents">Quản lí Event</a>
                    </div>


                </div>
                <div class="top">           
                    <div class="item8">
                        <img src="assets/img/logo.png" alt="logo" width="58px" height="58x">
                    </div>
                    <div class="title10">
                        <a class="dropbtn">Admin</a>
                        <div class="dropdown-content">
                            <a href="changePass.jsp">Quên mật khẩu</a>
                            <a href="login.jsp">Logout</a>
                        </div>
                    </div>
                </div>
                <span class="title11">Quản lí tài khoản</span>
                <div class="bottom">
                    <table>
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>UserName</th>
                                <th>Role</th>  
                                <th>Action</th>
                            </tr> 
                        </thead>
                        <tbody>
                            <c:forEach items="${listAccount}" var="o">
                                <tr>
                                    <td>${o.id}</td>
                                    <td>${o.user}</td>
                                    <c:if test="${o.isAdmin == 0}">
                                        <td>User</td>
                                    </c:if>
                                    <c:if test="${o.isAdmin == 1}">
                                        <td>Admin</td>
                                    </c:if>
                                    
                                    <td>    
                                        <button><a href="deleteAccount?id=${o.id}">Delete</a></button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
        
      
    </body>
</html>