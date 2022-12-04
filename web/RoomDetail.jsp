
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
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
        <link rel="stylesheet" href=assets/css/roomDetail.css />
        <title>Hotel</title>
    </head>
    <body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="100">
        <!-- 1.header-section Begin -->

        <jsp:include page="Header.jsp"></jsp:include>

            <div class="containerDetailRoom">
                <div class="NameTypeRoom"><h2>${type}</h2></div>
            <div class="RoomPicContainer">
                <img src="${img}" alt="" class="RoomPic" />
                <img src="${img}" alt="" class="RoomPic" />
                <img src="${img}" alt="" class="RoomPic" />
                <img src="${img}" alt="" class="RoomPic" />
            </div>
            <div class="roomService"><h3>Service</h3></div>
            <div class="RoomInfoDetailContainer">

                <table>
                    <tr>
                        <th>Amenities</th>
                        <td>Parking Free</td>
                        <td>Airport pick-up service</td>
                        <td>Wi-Fi in public areas</td>
                        <td>Luggage storage</td>
                        <td>24-hour front desk</td>
                    </tr>
                    <tr>
                        <th>Transportation</th>
                        <td>Airport pick-up service</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th>Front Desk</th>
                        <td>Luggage storage</td>
                        <td>24-hour front desk</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th>Public Area</th>
                        <td>Wi-Fi in public areas Free</td>
                        <td>Elevator</td>
                        <td>Non-smoking in all rooms</td>
                        <td></td>
                        <td></td>
                    </tr>

                    <tr class="DescriptionContent">
                        <th>More Decription</th>
                        <td colspan="5" rowspan="2">
                            1.9 km from Asia Park Danang, Hoang Phuong Hotel is set in Da Nang
                            and features air-conditioned rooms. The property is around 2.5 km
                            from Cham Museum and 3.2 km from Love Lock Bridge Da Nang. Private
                            parking can be arranged at an extra charge. The rooms in the hotel
                            are equipped with a kettle. Every room has a flat-screen TV, and
                            some rooms come with a balcony. When guests need guidance on where
                            to visit, the reception will be happy to provide advice. Indochina
                            Riverside Mall is 3.6 km from Hoang Phuong Hotel Da Nang. The
                            nearest airport is Da Nang International Airport, 1 km from the
                            property.
                        </td>
                    </tr>
                </table>
            </div>
            <div class="occupancy"><h4>occupancy: ${occ}</h4></div>
            <div class="floorNo"><h4>Floor : ${floor}</h4></div>
            <div class="price"><h4>Price: ${price} $</h4></div>

            <div class="comment-section" >
                <div class="cardComment">
                    <div class="row">
                        <div class="col-2"> <img src="https://i.imgur.com/xELPaag.jpg" width="70" class="rounded-circle mt-2"> </div>
                        <div class="col-10">
                            <form action="commentcontrol" method="POST">

                                <div class="comment-box ml-2">
                                    <h4>Comment</h4>
                                    <div class="rating"> <input type="radio" name="rating" value="5" id="5"><label for="5">☆</label> <input type="radio" name="rating" value="4" id="4"><label for="4">☆</label> <input type="radio" name="rating" value="3" id="3"><label for="3">☆</label> <input type="radio" name="rating" value="2" id="2"><label for="2">☆</label> <input type="radio" name="rating" value="1" id="1"><label for="1">☆</label> </div>
                                    <div class="comment-area"> <textarea class="form-control" placeholder="what is your view?" rows="4" name="txtComment"></textarea> </div>
                                    <div class="comment-btns mt-2">
                                        <div class="row">
                                            <div class="col-6">
                                                <div class="pull-left"> <button class="btn btn-success btn-sm">Cancel</button> </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="pull-right"> <button type="submit" class="btn btn-success send btn-sm">Send <i class="fa fa-long-arrow-right ml-1"></i></button> </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div> 
            </div>




        </div>

        <!-- 2.Detail Section End -->

        <!-- 3.Footer Section Begin -->
        <jsp:include page="Footer.jsp"></jsp:include>
        <!-- 3.Footer Section End -->

        <!-- header -->

        <script src="js/main.js"></script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"
        ></script>
    </body>
</html>