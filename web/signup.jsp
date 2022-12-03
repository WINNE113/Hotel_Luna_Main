<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" href="assets/img/logo.png">
    <title>Booking hotel</title>
    <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/osahan.css" rel="stylesheet">
    <link href="assets/font/stylesheet.css" rel="stylesheet">
    <link href="assets/vendor/mdi-icons/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="assets/css/custom.css" rel="stylesheet">
</head>
<body id="page-top">
<div class="row osahan-login m-0">
    <div class="col-md-6 osahan-login-left px-0">
    </div>
    <div class="col-md-6 d-flex justify-content-center flex-column px-0">
        <div class="col-lg-6 mx-auto">
            <h3 class="mb-1">Create an account</h3>
            <p class="mb-5">Please create an account to continue using our service</p>
            <form action="sign-up" method="post">
                <p class="text-danger">${MSG}</p>
                <div class="d-flex align-items-center mb-4">
                    <div class="mr-3 bg-light rounded p-2 osahan-icon"><i class="mdi mdi-account-outline"></i></div>
                    <div class="w-100">
                        <p class="mb-0 small font-weight-bold text-dark">First Name</p>
                        <input id="firstname" name="firstname" type="text"
                               class="form-control form-control-sm p-0 border-input border-0 rounded-0"
                               placeholder="Ex: Tran" required>
                    </div>
                    <div class="w-100">
                        <p class="mb-0 small font-weight-bold text-dark">Last Name</p>
                        <input id="lastname" name="lastname" type="text"
                               class="form-control form-control-sm p-0 border-input border-0 rounded-0"
                               placeholder="Ex: Van A" required>
                    </div>
                </div>
                <div class="d-flex align-items-center mb-4">
                    <div class="mr-3 bg-light rounded p-2 osahan-icon"><i class="mdi mdi-email-outline"></i></div>
                    <div class="w-100">
                        <p class="mb-0 small font-weight-bold text-dark">Date of birth</p>
                        <input id="dob" name="dob" type="text"
                               class="form-control form-control-sm p-0 border-input border-0 rounded-0"
                               placeholder="Ex: 2001-12-20" required pattern="^[0-9]{4}-(1[0-2]|0[1-9])-(3[01]|[12][0-9]|0[1-9])$">
                    </div>
                    <div class="mr-3 bg-light rounded p-2 osahan-icon"><i class="mdi mdi-email-outline"></i></div>
                    <div class="w-100">
                        <p class="mb-0 small font-weight-bold text-dark">Gender</p>
                        <select id="gender" name="gender" class="form-select form-select-sm" aria-label=".form-select-sm example">
                            <option value="male" selected>Male</option>
                            <option value="female">Female</option>
                        </select>
                    </div>
                </div>

                <div class="d-flex align-items-center mb-4">
                    <div class="mr-3 bg-light rounded p-2 osahan-icon"><i class="mdi mdi-email-outline"></i></div>
                    <div class="w-100">
                        <p class="mb-0 small font-weight-bold text-dark">Phone number</p>
                        <input id="phonenumber" name="phonenumber" type="text"
                               class="form-control form-control-sm p-0 border-input border-0 rounded-0"
                               placeholder="Ex: 0988123456 (10 digits)" pattern="(0[1-9])+([0-9]{8})\b" required>
                    </div>
                </div>
                <div class="d-flex align-items-center mb-4">
                    <div class="mr-3 bg-light rounded p-2 osahan-icon"><i class="mdi mdi-email-outline"></i></div>
                    <div class="w-100">
                        <p class="mb-0 small font-weight-bold text-dark">Email Address</p>
                        <input id="email" name="email" type="email"
                               class="form-control form-control-sm p-0 border-input border-0 rounded-0"
                               placeholder="Ex: abc@gmail.com" pattern="^[a-zA-Z][\w-]+@([\w]+\.[\w]+|[\w]+\.[\w]{2,}\.[\w]{2,})$" required>
                    </div>
                </div>
                <div class="d-flex align-items-center mb-4">
                    <div class="mr-3 bg-light rounded p-2 osahan-icon"><i class="mdi mdi-form-textbox-password"></i>
                    </div>
                    <div class="w-100">
                        <p class="mb-0 small font-weight-bold text-dark">Password</p>
                        <input id="password" name="password" type="password"
                               class="form-control form-control-sm p-0 border-input border-0 rounded-0"
                               placeholder="********" required>
                    </div>
                </div>
                <div class="d-flex align-items-center mb-4">
                    <div class="mr-3 bg-light rounded p-2 osahan-icon"><i class="mdi mdi-form-textbox-password"></i>
                    </div>
                    <div class="w-100">
                        <p class="mb-0 small font-weight-bold text-dark">Passport</p>
                        <input id="passport" name="passport" type="text"
                               class="form-control form-control-sm p-0 border-input border-0 rounded-0"
                               placeholder="Ex: 12345678 (8 digits)" pattern="^[0-9]{8}$" required>
                    </div>
                </div>
                <div class="d-flex align-items-center mb-4">
                    <div class="mr-3 bg-light rounded p-2 osahan-icon"><i class="mdi mdi-form-textbox-password"></i>
                    </div>
                    <div class="w-100">
                        <p class="mb-0 small font-weight-bold text-dark">Address</p>
                        <input id="address" name="address" type="text"
                               class="form-control form-control-sm p-0 border-input border-0 rounded-0"
                               placeholder="Ex: Da Nang" required>
                    </div>
                </div>
                <div class="mb-3">
                    <button id="btn-signup" class="btn btn-primary btn-block mb-3" type="submit">Create an account</button>
                    <p class="text-center">Already have an account? <a href="login"
                                                                       class="text-danger text-decoration-none">Sign
                        in</a></p>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="assets/vendor/jquery/jquery.min.js" type="105ae87169facef54e7f3cf4-text/javascript"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"
        type="105ae87169facef54e7f3cf4-text/javascript"></script>
<script src="assets/vendor/jquery-easing/jquery.easing.min.js" type="105ae87169facef54e7f3cf4-text/javascript"></script>
<script src="assets/js/osahan.min.js" type="105ae87169facef54e7f3cf4-text/javascript"></script>
<script src="../../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js"
        data-cf-settings="105ae87169facef54e7f3cf4-|49" defer=""></script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/v652eace1692a40cfa3763df669d7439c1639079717194"
        integrity="sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw=="
        data-cf-beacon='{"rayId":"75c6f94d7bbf7eba","version":"2022.10.3","r":1,"token":"dd471ab1978346bbb991feaa79e6ce5c","si":100}'
        crossorigin="anonymous"></script>
<%--<script src="assets/js/signup.js"></script>--%>
</body>

<!-- Mirrored from askbootstrap.com/preview/osahan-eat/theme-sidebar/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 19 Oct 2022 05:04:58 GMT -->
</html>