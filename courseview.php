<?php
include "includes/header.php";
if (isset($_SESSION['id'])) {

    if (isset($_GET["cid"])) {
        $cid = $_GET["cid"];
        if ($role == 'teacher') {
            $sql2 = "SELECT * FROM course  WHERE id = '$cid' ";
        } else {
            $sql2 = "SELECT * FROM course c LEFT JOIN enroll e ON c.id = e.course_id WHERE e.user_id = '$user_id' AND c.id = '$cid'";
        }
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
        swal('Please Loin to access','','error');
          setTimeout(function() {
            window.location.href = 'index.php';
          }, 2000);
      </script>";
}
?>
<br>
<center>
    <div class="container">
        <h1>
            <?php echo $row2['name'] ?> Course
        </h1>
        <p>By :
            <?php echo $row2['teacher'] ?>
        </p><br><br>
        <video width="400" controls>
            <source src="documents/<?php echo $row2['video'] ?>" type="video/mp4">
            Your browser does not support the video tag.
        </video>
        <br><br>
        <h2>Description</h2>
        <p>
            <?php echo $row2['about'] ?>
        </p>
        <a href="documents/<?php echo $row2['document'] ?>" target="_blank">Download PDF</a>
    </div>
</center>
<br><br><br>
<div class="container">

    <br><br>
    <form method="post">
        <input type="text" name="words">
        <input type="hidden" name="name" value="<?php echo $row['name']; ?>">
        <input type="hidden" name="cid" value="<?php echo $cid; ?>">
        <button type="submit" name="comment" class="btn">Post a comment</button>
    </form>
    <br><br>
    <?php
    $sql = "SELECT * FROM comments WHERE cid = '$cid'";
    $result = mysqli_query($con, $sql);

    if (mysqli_num_rows($result) > 0) {

        while ($row1 = mysqli_fetch_assoc($result)) {
            ?>
            <p>
                <?php echo $row1['words'] ?><br>--
                <?php echo $row1['name'] ?>
            </p><br><br>
            <?php
        }

    } else {
        echo "Courses not found";
    }
    ?>

</div>

<?php
if (isset($_POST['comment'])) {
    $words = $_POST['words'];
    $cid = $_POST['cid'];
    $name = $_POST['name'];

    $sql = "INSERT INTO comments (`words`,`cid`,`name`) VALUES ('$words', '$cid', '$name')";
    $result = mysqli_query($con, $sql);

    if ($result) {
        echo "<script>
        swal('Commented successfully', '', 'success');
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