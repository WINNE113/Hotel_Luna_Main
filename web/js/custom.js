
//Load data by price
$(document).ready(function () { 
    $(document).on('change', 'input[name="price"]', function () {
        var data_1 = [];
        $(" .filter_by_price:checked").each(function () {
            data_1.push($(this).val());

        });
        $.ajax({
            url: "/Hotel_Luna_Main/filterbyprice",
            type: "get", //send it through get method
            data: {
                 allPrice: JSON.stringify(data_1)
            },
            success: function (data) {
                var row = document.getElementById("filter_room");
                row.innerHTML = data;
            },
            error: function (xhr) {
                //Do Something to handle error
            }
        });
    });
});
// load data by room type
$(document).ready(function () { 
    $(document).on('change', 'input[name="type_room"]', function () {
        var data_2 = [];
        $(".filter_by_room_type:checked").each(function () {
            data_2.push($(this).val());

        });
        $.ajax({
            url: "/Hotel_Luna_Main/filterbyroomtype",
            type: "get", //send it through get method
            data: {
                 allRoomType: JSON.stringify(data_2)
            },
            success: function (data) {
                var row = document.getElementById("filter_room");
                row.innerHTML = data;
            },
            error: function (xhr) {
                //Do Something to handle error
            }
        });
    });
});

$(document).ready(function () { 
    $(document).on('change', 'input[name="type_bed"]', function () {
        var data = [];
        $(".filter_by_bed_type:checked").each(function () {
            data.push($(this).val());

        });
        for (i = 0; i < data.length; i++) {
            console.log(data[i]);
        }
        $.ajax({
            url: "/Hotel_Luna_Main/filterbytypebed",
            type: "get", //send it through get method
            data: {
                 typebed: JSON.stringify(data)
            },
            success: function (data) {
                var row = document.getElementById("filter_room");
                row.innerHTML = data;
            },
            error: function (xhr) {
                //Do Something to handle error
            }
        });
    });
});
$(document).ready(function () {
    $('#navList').on('click', 'li', function () {
        $('#navList li.active').removeClass('active');
        $(this).addClass('active');
    });
});


