<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Registration</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <!-- Custom styles for this template -->
    <link href="styles/reg.css" rel="stylesheet">

    <script src="scripts/check.js"></script>

</head>
<body>

<h2 class="heading">Registration</h2>

<form class="form-signup" action="reg" method="post">
    <input id="name" class="form-control" type="text" placeholder="Enter your name" name="name" value="${name!""}" required/>

    <input id="login" class="form-control" type="text" placeholder="Enter login" name="login" value="${login!""}" required/>

    <input id="email" class="form-control" type="text" placeholder="Enter email" name="email" value="${email!""}" required onkeyup='check_email(); ok()'/>
    <span id="correct_email"></span>

    <input id="password" class="form-control" type="password" placeholder="Enter password" name="password" required  onkeyup='check(); ok()'/>
    <input id="confirm_password" class="form-control" type="password" placeholder="Confirm password" name="confirm_pass" required  onkeyup='check(); ok()'/>

    <span id="correct_message"></span>
    <span id="sometext">
        ${error_message!""}
    </span>
    <span id="matching_message"></span>

    <div class="formname">
        <form method="post">
            <input id="checkbox" type="checkbox" name="checkbox" onchange="ok3 = this.checked; ok();" />
            <label for="checkbox">Terms & Conditions</label>
            <input class="btn btn-lg btn-dark btn-block" type="submit" disabled="disabled" name="submit" id="submit" value="Sign up" />
        </form>
    </div>

</form>

</body>
</html>