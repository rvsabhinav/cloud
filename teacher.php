<?php
include "includes/header.php";

?>
<div class="conatiner m-4">
  <center>
    <h1 class="display-6">Upload a course</h1><br><br>
    <form method="post" enctype="multipart/form-data">
      <label for="course_name">Course Name:</label><br>
      <input type="text" name="course_name" id="course_name" required><br><br>

      <label for="course_image">Course Image:</label><br>
      <input type="file" name="course_image" id="course_image" accept="image/*" required><br><br>

      <label for="course_video">Course Video:</label><br>
      <input type="file" name="course_video" id="course_video" accept="video/*" required><br><br>

      <label for="course_document">Course Document:</label><br>
      <input type="file" name="course_document" id="course_document" accept=".pdf,.doc,.docx" required><br><br>

      <label for="course_document">About:</label><br>
      <input type="text" name="about" id="about" required><br><br>


      <label for="course_document">Price:</label><br>
      <input type="text" name="price" id="price" required><br><br>
      <input type="hidden" name="teacher" value="<?php echo $row['name']; ?>">
      <input type="hidden" name="t_id" value="<?php echo $user_id; ?>">
      <input type="submit" name="submit" value="Upload Course">
    </form>
  </center>
</div>

<?php
if (isset($_POST['submit'])) {
  $course_name = $_POST['course_name'];
  $about = $_POST['about'];
  $price = $_POST['price'];
  $teacher = $_POST['teacher'];
  $t_id = $_POST['t_id'];

  $upload_dir = "documents/";
  $course_image = $_FILES['course_image']['name'];
  $course_video = $_FILES['course_video']['name'];
  $course_document = $_FILES['course_document']['name'];

  move_uploaded_file($_FILES['course_image']['tmp_name'], $upload_dir . $course_image);
  move_uploaded_file($_FILES['course_video']['tmp_name'], $upload_dir . $course_video);
  move_uploaded_file($_FILES['course_document']['tmp_name'], $upload_dir . $course_document);

  // Escape the values to prevent SQL injection
  $course_name = mysqli_real_escape_string($con, $course_name);
  $course_image = mysqli_real_escape_string($con, $course_image);
  $course_video = mysqli_real_escape_string($con, $course_video);
  $course_document = mysqli_real_escape_string($con, $course_document);
  $course_video = "documents/" . $course_video;
  // Insert the data into the database
  $sql = "INSERT INTO course (`name`, `image`, `video`, `document`, about, price, teacher, teacher_id) VALUES ('$course_name', '$course_image', '$course_video', '$course_document', '$about', '$price', '$teacher', '$t_id')";
  echo $sql;
  $result = mysqli_query($con, $sql);

  if ($result) {
    echo "<script>
        swal('Course Added successfully', '', 'success');
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