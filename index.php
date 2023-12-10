<?php
include "includes/header.php";
?>


<section>
    <div class="card text-white">
        <img src="https://www.autismtas.org.au/wp-content/uploads/2022/10/Autism-Tas-be-open-banner.jpg"
            class="card-img" alt="Background Image">
        <div class="card-img-overlay">
            <div class="bg-white rounded text-dark p-4" style="max-width:500px">
                <h1>Cyber Sale on now:<br>Courses from $10 </h1>
                <p>Don't miss the chance to create your next opportunity with courses as low as $10 .</p>
            </div>
        </div>
    </div>
</section>
<br><br>
<!-------------------------------SELECTION OF COURSES--------------------------------- -->
<section id="course-selection">
    <div class="promo container">
        <h1>A broad selection of courses</h1>
        <p>Choose from 213,000 online video courses with new additions published every month</p>
    </div>

    </div>
</section>

<!--------------------------- STUDENTS ARE VIEWING ------------------------------>
<section class="container">
    <h1>Students are viewing</h1>
    <div class=" container">
        <div class="row">
            <?php
            $sql = "SELECT * FROM course";
            $result = mysqli_query($con, $sql);

            if (mysqli_num_rows($result) > 0) {

                while ($row1 = mysqli_fetch_assoc($result)) {
                    ?>
                    <div class="col-lg-4 col-12">
                        <div class="card p-4 mb-4">
                            <img src="<?php echo $row1['image'] ?>" style="width:100%" alt="">
                            <p class="title">
                                <?php echo $row1['name'] ?>
                            </p>
                            <p class="author">
                                <?php echo $row1['teacher'] ?>
                            </p>
                            <p class="rating">
                                <?php echo $row1['rating'] ?>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-regular fa-star-half-stroke"></i>
                                <span class="number">(Enrollment:
                                    <?php echo $row1['enrollment'] ?>)
                                </span>
                            </p>
                            <p class="price"> $
                                <?php echo $row1['price'] ?>
                            </p>
                            <p class="bs">Bestseller</p>
                            <a href="courseview.php?cid=<?php echo $row1['id'] ?>">View course</a>
                        </div>
                    </div>
                    <?php
                }

            } else {
                echo "Courses not found";
            }
            ?>
        </div>
    </div>
</section>

<!----------------------------------- TOP CATEGORIES--------------------------------- -->
<section id="categories">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2 class="p-h2">Top Categories</h2>
                <div class="picture-div">
                    <div class="col-lg-3 col-12 category-box">
                        <img src="images/Categories/design.jpg" alt="Design">
                        <p>Design</p>
                    </div>
                    <div class="col-lg-3 col-12 category-box">
                        <img src="images/Categories/dev.jpg" alt="Development">
                        <p>Development</p>
                    </div>
                    <div class="col-lg-3 col-12 category-box">
                        <img src="images/Categories/marketin.jpg" alt="Marketing">
                        <p>Marketing</p>
                    </div>
                    <div class="col-lg-3 col-12 category-box">
                        <img src="images/Categories/IT&S.jpg" alt="IT and Software">
                        <p>IT and Software</p>
                    </div>
                    <div class="col-lg-3 col-12 category-box">
                        <img src="images/Categories/personaldev.jpg" alt="Personal Development">
                        <p>Personal Development</p>
                    </div>
                    <div class="col-lg-3 col-12 category-box">
                        <img src="images/Categories/business.jpg" alt="Business">
                        <p>Business</p>
                    </div>
                    <div class="col-lg-3 col-12 category-box">
                        <img src="images/Categories/photography.jpg" alt="Photography">
                        <p>Photography</p>
                    </div>
                    <div class="col-lg-3 col-12 category-box">
                        <img src="images/Categories/music.jpg" alt="Music">
                        <p>Music</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<!----------------------- OUTRO-------------------------------- -->
<section id="outro">
    <div class="instructor1 container">
        <div class="row">
            <div class="col-lg-6 col-12">
                <div class="i-pic">
                    <img src="images/Other/man.jpg" alt="instructor">
                </div>
            </div>
            <div class="col-lg-6 col-12">
                <div class="i-text">
                    <h1>Become an instructor</h1>
                    <p>Instructors from around the world teach millions of students on Web Tutorting. We provide the tools and
                        skills to teach what you love.</p>
                </div>
            </div>
        </div>


    </div>
</section>
<br><br>
<!----------------------- FOOTER--------------------------------->
  <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 border-top bg-light">
    <div class="col-md-4 d-flex align-items-center">
      <a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
        <svg class="bi" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
      </a>
      <span class="text-muted">&copy; 2023 Company, Inc</span>
        </div>
  </footer>
  <!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/654ae2c3f2439e1631ecd42c/1hem8bja1';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
</body>

</html>