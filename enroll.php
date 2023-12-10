<?php
include "includes/header.php";
if (isset($_SESSION['id'])) {

    if (isset($_GET["cid"])) {
        $cid = $_GET["cid"];

        $sql2 = "SELECT * FROM course c WHERE c.id = '$cid'";
        $result2 = $con->query($sql2);
        if ($result2->num_rows > 0) {
            $row2 = $result2->fetch_assoc();
        } else {
            echo "<script>
            swal('Please Enroll to access','','error');
              setTimeout(function() {
                window.location.href = 'enroll.php?cid=" . $cid . "';
              }, 2000);
          </script>";
        }
    } else {
        echo "<script>
                  swal('OOPS!!','Wrong Information','warning');
                    setTimeout(function() {
                      window.location.href = 'index.php';
                    }, 2000);
                </script>";
    }

} else {
    echo "<script>
        swal('Please Login to access','','error');
          setTimeout(function() {
            window.location.href = 'index.php';
          }, 2000);
      </script>";
}
?>

<center><br>
    <div class="card shadow" style="width:400px">
    <br>
       <h1 class="display-6"><p>Course Enrollment</p></h1>
       Name :<?php echo $row['name'];?><br>
       Course Name : <?php echo $row2['name'] ?><br>
       Price : Rs.<?php echo $row2['price'] ?><br>
       Ratint : <?php echo $row2['rating'] ?><br><br>
       <form method="post">
        <input type="hidden"name="user_id" value="<?php echo $user_id ?>">
        <input type="hidden"name="cid" value="<?php echo $cid ?>">
        <button type="submit" name="enroll" class="btn btn-dark">Enroll Now</button>
       </form><br>
    </div>
</center>
<?php
if (isset($_POST['enroll'])) {
    $user_id = $_POST['user_id']; 
    $cid = $_POST['cid']; 

    $sql = "INSERT INTO enroll (user_id, course_id) VALUES ('$user_id', '$cid')";
    $result = mysqli_query($con, $sql);

    if ($result) {
        echo "<script>
        swal('Course Enrolled successfully', '', 'success');
          setTimeout(function() {
            window.location.href = 'courseview.php?cid=" . $cid . "';
          }, 2000);
      </script>";
    } else {
        echo mysqli_error($con);
        echo "<script>
        swal('Sorry', 'Something went wrong', 'error');
          setTimeout(function() {
            window.location.href = 'index.php';
          }, 2000);
      </script>";
    }
}
?>
