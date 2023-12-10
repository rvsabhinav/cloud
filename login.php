<?php
include "includes/conn.php";
?>
<!doctype html>
<html lang="en">

<head>
    <title>login</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

    <!--Convert to an external stylesheet-->
    <style>
        html,
        body {
            height: 100%;
        }

        body {

            color: white;
            display: flex;
            align-items: center;
            padding-top: 40px;
            padding-bottom: 40px;
        }

        .form-signin {
            width: 100%;
            max-width: 330px;
            padding: 15px;
            margin: auto;
            color: #212121;
            border: 4px solid #1CBBEE;
            border-radius: 25px;
        }

        .form-signin .checkbox {
            font-weight: 400;
        }

        .form-signin .form-floating:focus-within {
            z-index: 2;
        }

        .form-signin input[type="email"] {
            margin-bottom: -1px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }

        .form-signin input[type="password"] {
            margin-bottom: 10px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }
    </style>

</head>

<body class="text-center">
    <div class="form-signin bg-light">
        <form method="POST">
            <img class="mb-4" src="includes\img\logo.png" alt="" width="72">
            <h1 class="h3 mb-3 fw-normal">Login</h1>
            <div class="form-floating">
                <input type="email" class="form-control" name="email"id="floatingInput" placeholder="name@example.com">
                <label for="floatingInput">Email address</label>
            </div><br>
            <div class="form-floating">
                <input type="password" class="form-control"name="password" id="floatingPassword" placeholder="Password">
                <label for="floatingPassword">Password</label>
            </div><br>
            <a href="register.php" class="link-primary"style="text-decoration: none;">New User ?? <b>Register Now</b></a> <br><br>
            <button class="w-100 btn btn-lg btn-info rounded" name="submit" type="submit">Sign in</button>
        </form>
    </div>


    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous">
    </script>
</body>

</html>

<?php

if(isset($_POST['submit']))//Login up code
{

   
    
    
    $logid=$_POST['email']; 

    $pass=$_POST['password'];

    
    $sql_u = "SELECT * FROM `admin` WHERE email='".$logid."' and password='".$pass."'";
    
    $res_u = mysqli_query($con, $sql_u);
    
    if ($res_u->num_rows > 0)
    {
        $row=$res_u->fetch_assoc();
        session_start();


      $_SESSION['id']=$row['id'];
      echo "<script>
              swal('Welcome','','success');
                setTimeout(function() {
                  window.location.href = 'index.php';
                }, 2000);
            </script>"; 
    }
    else
    {
        
            echo mysqli_error($con);
                  echo "<script>
              swal('OOPS!!','Wrong Information','warning');
                setTimeout(function() {
                  window.location.href = 'login.php';
                }, 2000);
            </script>"; 
    }
    
    
   
        

}

?>
