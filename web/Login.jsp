<%-- 
    Document   : Login
    Created on : Nov 3, 2022, 8:17:16 PM
    Author     : ASUS-PRO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link href="assets/css/login_style.css" rel="stylesheet" type="text/css"/>
        <title>Login Form</title>
    </head>
    <body>
        <div id="logreg-forms">
            <form class="form-signin" action="login" method="post" id="form">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>
                <p class="text-danger">${message}</p>
                <input name="email"  type="text" id="inputEmail" class="form-control" placeholder="Email" required="" autofocus="">
                <input name="pass"  type="password" id="inputPassword" class="form-control" placeholder="Password" required="">

                <!--                recaptcha-->
                <div class="g-recaptcha" data-sitekey="6LcoIAshAAAAAFKF496j42oi3wDRXxPiHJGIen2P"></div>
                <div class="btn-danger" id="error"></div>


                <div class="form-group form-check">
                    <a href="ForgetPassword.jsp">Forgot PassWord</a>
                    <a href="https://accounts.google.com/o/oauth2/auth?scope=profile&redirect_uri=http://localhost:8080/LoginGoogle/LoginGoogleHandler&response_type=code
                       &client_id=510384508793-m5ak8if8fpbp1nm4tom3o6q44rqrqngi.apps.googleusercontent.com&approval_prompt=force">Login With Google</a>
                </div>
                <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>

                <script src="https://www.google.com/recaptcha/api.js" async defer></script>
                <script>
                    window.onload = function () {
                        let isValid = false;
                        const form = document.getElementById("form");
                        const error = document.getElementById("error");

//                                N?u form submit thì ph?i th?c hi?n even truoec
                        form.addEventListener("submit", function (event) {

                            // Ng?n k cho submit
                            event.preventDefault();

                            const response = grecaptcha.getResponse();
                            if (response) {
                                form.submit();
                            } else {
                                error.innerHTML = "Please check!";
                            }
                        });
                    }
                </script>
                <hr>
                <button class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus"></i> Sign up New Account</button>
            </form>
            <form action="signup" method="post" class="form-signup">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign up</h1>
                <p class="text-danger">${message}</p>
                <input name="firstName" type="text" id="First_Name" class="form-control" placeholder="First Name" required="" autofocus="">
                <input name="lastName" type="text" id="Last_name" class="form-control" placeholder="Last Name" required="" autofocus="">
                <input name="email" type="text" id="Email" class="form-control" placeholder="Email" required="" autofocus="">
                <input name="phone" type="text" id="phone_number" class="form-control" placeholder="Phone Number" required="" autofocus="">
                <input name="pass" type="password" id="user-pass" class="form-control" placeholder="Password" required autofocus="">
                <input name="repass" type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required autofocus="">
                <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
                <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
            </form>
            <br>

        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script>
                    function toggleResetPswd(e) {
                        e.preventDefault();
                        $('#logreg-forms .form-signin').toggle() // display:block or none
                        $('#logreg-forms .form-reset').toggle() // display:block or none
                    }

                    function toggleSignUp(e) {
                        e.preventDefault();
                        $('#logreg-forms .form-signin').toggle(); // display:block or none
                        $('#logreg-forms .form-signup').toggle(); // display:block or none
                    }

                    $(() => {
                        // Login Register Form
                        $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
                        $('#logreg-forms #cancel_reset').click(toggleResetPswd);
                        $('#logreg-forms #btn-signup').click(toggleSignUp);
                        $('#logreg-forms #cancel_signup').click(toggleSignUp);
                    })
        </script>
    </body>
</html>