<?php
include "includes/header.php";
?>

<section id="viewing">
        <h1>Your Courses</h1>
        <div class="courses">
            <?php
            $sql = "SELECT * FROM course c LEFT JOIN enroll e on e.course_id = c.id WHERE e.user_id = $user_id";
            $result = mysqli_query($con, $sql);

            if (mysqli_num_rows($result) > 0) {

                while ($row1 = mysqli_fetch_assoc($result)) {
                    ?>
                    <div class="course-box">
                        <img src="<?php echo $row1['image']?>" style="width:300px"alt="">
                        <p class="title"><?php echo $row1['name']?></p>
                        <p class="author"><?php echo $row1['teacher']?></p>
                        <p class="rating"><?php echo $row1['rating']?>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star-half-stroke"></i>
                            <span class="number">(Enrollment: <?php echo $row1['enrollment']?>)</span>
                        </p>
                        <p class="price">Rs. <?php echo $row1['price']?></p>
                        <p class="bs">Bestseller</p>
                        <a href="courseview.php?cid=<?php echo $row1['id']?>">View course </a>
                    </div>
                    <?php
                }

            } else {
                echo "Courses not found";
            }
            ?>
        </div>
    </section>