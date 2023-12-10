-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2023 at 11:49 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `study_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `name`, `password`, `role`) VALUES
(1, 'v@v.com', 'vaibhav', '123', 'student'),
(2, 'teacher@gmail.com', 'Teacher', '123', 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `words` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `words`, `name`, `cid`) VALUES
(1, 'hii', 'vaibhav', 2);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `teacher` varchar(200) NOT NULL,
  `teacher_id` int(11) DEFAULT '2',
  `about` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `video` varchar(200) NOT NULL,
  `document` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `rating` varchar(200) NOT NULL,
  `enrollment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `teacher`, `teacher_id`, `about`, `image`, `video`, `document`, `price`, `rating`, `enrollment`) VALUES
(1, 'Python', 'Dr. Smriti ', 2, '<p class=\"MsoBodyText\" style=\"line-height: 115%; margin-bottom: 0in; margin-left: 5.0pt; margin-right: 5.8pt; margin-top: 3.05pt; margin: 3.05pt 5.8pt 0in 5pt; text-align: justify;\"><span style=\"letter-spacing: 0.0666667px;\"><b>Certainly! If you\'re interested in learning Python, you have a wide range of options available to you. Python is a versatile and widely used programming language, making it a great choice for beginners and experienced programmers alike. Here\'s a step-by-step guide to getting started with a Python course:</b></span></p><p class=\"MsoBodyText\" style=\"line-height: 115%; margin-bottom: 0in; margin-left: 5.0pt; margin-right: 5.8pt; margin-top: 3.05pt; margin: 3.05pt 5.8pt 0in 5pt; text-align: justify;\"><span style=\"letter-spacing: 0.0666667px;\"><b><br /></b></span></p><p class=\"MsoBodyText\" style=\"line-height: 115%; margin-bottom: 0in; margin-left: 5.0pt; margin-right: 5.8pt; margin-top: 3.05pt; margin: 3.05pt 5.8pt 0in 5pt; text-align: justify;\"><span style=\"letter-spacing: 0.0666667px;\"><b>Set Your Goals:</b></span></p><p class=\"MsoBodyText\" style=\"line-height: 115%; margin-bottom: 0in; margin-left: 5.0pt; margin-right: 5.8pt; margin-top: 3.05pt; margin: 3.05pt 5.8pt 0in 5pt; text-align: justify;\"><span style=\"letter-spacing: 0.0666667px;\"><b>Determine why you want to learn Python. Are you interested in web development, data science, machine learning, automation, or something else? Understanding your goals will help you choose the most relevant course.</b></span></p><p class=\"MsoBodyText\" style=\"line-height: 115%; margin-bottom: 0in; margin-left: 5.0pt; margin-right: 5.8pt; margin-top: 3.05pt; margin: 3.05pt 5.8pt 0in 5pt; text-align: justify;\"><span style=\"letter-spacing: 0.0666667px;\"><b><br /></b></span></p><p class=\"MsoBodyText\" style=\"line-height: 115%; margin-bottom: 0in; margin-left: 5.0pt; margin-right: 5.8pt; margin-top: 3.05pt; margin: 3.05pt 5.8pt 0in 5pt; text-align: justify;\"><span style=\"letter-spacing: 0.0666667px;\"><b>Choose a Learning Path:</b></span></p><p class=\"MsoBodyText\" style=\"line-height: 115%; margin-bottom: 0in; margin-left: 5.0pt; margin-right: 5.8pt; margin-top: 3.05pt; margin: 3.05pt 5.8pt 0in 5pt; text-align: justify;\"><span style=\"letter-spacing: 0.0666667px;\"><b>There are different learning paths for Python, depending on your interests. Here are a few common ones:</b></span></p><p class=\"MsoBodyText\" style=\"line-height: 115%; margin-bottom: 0in; margin-left: 5.0pt; margin-right: 5.8pt; margin-top: 3.05pt; margin: 3.05pt 5.8pt 0in 5pt; text-align: justify;\"><span style=\"letter-spacing: 0.0666667px;\"><b><br /></b></span></p><p class=\"MsoBodyText\" style=\"line-height: 115%; margin-bottom: 0in; margin-left: 5.0pt; margin-right: 5.8pt; margin-top: 3.05pt; margin: 3.05pt 5.8pt 0in 5pt; text-align: justify;\"><span style=\"letter-spacing: 0.0666667px;\"><b>Python for Beginners: If you\'re new to programming, start with courses or tutorials designed for beginners.</b></span></p><p class=\"MsoBodyText\" style=\"line-height: 115%; margin-bottom: 0in; margin-left: 5.0pt; margin-right: 5.8pt; margin-top: 3.05pt; margin: 3.05pt 5.8pt 0in 5pt; text-align: justify;\"><span style=\"letter-spacing: 0.0666667px;\"><b>Web Development: If you want to build websites and web applications, you can learn Python for web development with frameworks like Django or Flask.</b></span></p><p class=\"MsoBodyText\" style=\"line-height: 115%; margin-bottom: 0in; margin-left: 5.0pt; margin-right: 5.8pt; margin-top: 3.05pt; margin: 3.05pt 5.8pt 0in 5pt; text-align: justify;\"><span style=\"letter-spacing: 0.0666667px;\"><b>Data Science: Python is widely used in data science. Consider courses that focus on libraries like NumPy, Pandas, and Matplotlib.</b></span></p><p class=\"MsoBodyText\" style=\"line-height: 115%; margin-bottom: 0in; margin-left: 5.0pt; margin-right: 5.8pt; margin-top: 3.05pt; margin: 3.05pt 5.8pt 0in 5pt; text-align: justify;\"><span style=\"letter-spacing: 0.0666667px;\"><b>Machine Learning and AI: If you\'re interested in artificial intelligence and machine learning, explore courses related to TensorFlow, Keras, or scikit-learn.</b></span></p>', 'https://oracle-devrel.github.io/devo-image-repository/seo-thumbnails/Pyhton---Thumbnail-1200-x-630.jpg', 'python.mp4', 'python.pdf', '250', '3.6', 400),
(2, 'Javascript ', 'Dr. Rahul Sharma', 2, '<p>Certainly! If you\'re interested in learning JavaScript, you have a wide range of resources and courses available to help you become proficient in this versatile programming language. JavaScript is a fundamental language for web development and is also used in many other areas, including server-side development and mobile app development. Here\'s a step-by-step guide to getting started with a JavaScript course:</p><p><br /></p><p>Set Your Goals:</p><p>Determine why you want to learn JavaScript. Are you interested in web development, game development, mobile app development, or something else? Understanding your goals will help you choose the most relevant course.</p><p><br /></p><p>Choose a Learning Path:</p><p>JavaScript has various applications. Here are a few common learning paths:</p><p><br /></p><p>Web Development: If you want to create dynamic websites and web applications, focus on the fundamentals of JavaScript and consider learning web frameworks like React, Angular, or Vue.js.</p><p>Game Development: Explore courses that teach you how to use JavaScript for game development, often in combination with HTML5 and Canvas or game development libraries.</p><p>Node.js and Server-Side Development: Learn how to use JavaScript for server-side scripting with Node.js.</p><p>Mobile App Development: You can use JavaScript with frameworks like React Native for cross-platform mobile app development.&nbsp;</p>', 'https://oracle-devrel.github.io/devo-image-repository/seo-thumbnails/JavaScript---Thumbnail-1200-x-630.jpg', '', 'js.pdf', '500', '4.3', 10),
(3, 'React Js', 'Dr. Vikas sharma', 2, '<div><span style=\"font-family: Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"white-space-collapse: preserve;\">If you\'re interested in learning React, you\'re on the right path to becoming proficient in one of the most popular JavaScript libraries for building user interfaces. React is widely used in web development to create interactive and dynamic web applications. Here\'s a step-by-step guide on how to get started with a React course:</span></span></div><div><span style=\"font-family: Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"white-space-collapse: preserve;\"><br /></span></span></div><div><span style=\"font-family: Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"white-space-collapse: preserve;\">Set Your Goals:</span></span></div><div><span style=\"font-family: Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"white-space-collapse: preserve;\">Determine your goals for learning React. Are you interested in becoming a front-end web developer, building single-page applications, or improving your existing web development skills? Understanding your goals will help you choose the right course.</span></span></div><div><span style=\"font-family: Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"white-space-collapse: preserve;\"><br /></span></span></div><div><span style=\"font-family: Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"white-space-collapse: preserve;\">Prerequisites:</span></span></div><div><span style=\"font-family: Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"white-space-collapse: preserve;\">Before diving into React, make sure you have a solid understanding of HTML, CSS, and JavaScript. Familiarity with ES6 (ECMAScript 2015) is especially helpful because React code often uses ES6 features.</span></span></div><div><span style=\"font-family: Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"white-space-collapse: preserve;\"><br /></span></span></div><div><span style=\"font-family: Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"white-space-collapse: preserve;\">Choose a Learning Path:</span></span></div><div><span style=\"font-family: Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"white-space-collapse: preserve;\">There are several learning paths for React, depending on your goals:</span></span></div><div><span style=\"font-family: Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"white-space-collapse: preserve;\"><br /></span></span></div><div><span style=\"font-family: Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"white-space-collapse: preserve;\">React for Beginners: Start with the fundamentals of React, including components, state, and props.</span></span></div><div><span style=\"font-family: Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"white-space-collapse: preserve;\">React and Redux: Learn how to manage state and create complex applications with the help of Redux.</span></span></div><div><span style=\"font-family: Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"white-space-collapse: preserve;\">React for Web Development: Focus on building web applications using React, React Router, and other relevant libraries.</span></span></div><div><span style=\"font-family: Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"white-space-collapse: preserve;\">React Native for Mobile Development: Explore React Native for developing mobile apps on both iOS and Android.</span></span></div>', 'https://www.valuecoders.com/blog/wp-content/uploads/2016/08/react.png', '', 'react.pdf', '560', '4.2', 0),
(4, 'PHP', 'Dr. prashant gupta', 2, '<span face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space-collapse: preserve;\">PHP is a popular server-side scripting language used for web development. If you want to learn PHP, here\'s a step-by-step guide on how to get started with a PHP course:\r\n\r\nSet Your Goals:\r\nDetermine why you want to learn PHP. Are you interested in becoming a web developer, creating dynamic web pages, or building web applications? Understanding your goals will help you choose the right course.\r\n\r\nPrerequisites:\r\nPHP is a scripting language used in web development, so having a basic understanding of HTML and CSS is helpful. Familiarity with general programming concepts will also be beneficial.\r\n\r\nChoose a Learning Path:\r\nPHP can be used in various web development areas. Here are a few common learning paths:\r\n\r\nPHP for Web Development: Learn how to create dynamic websites and web applications using PHP.\r\nPHP for WordPress: If you want to customize and develop plugins or themes for WordPress, PHP is a valuable skill.\r\nPHP Frameworks: Consider courses on PHP frameworks like Laravel or Symfony for more advanced web development.\r\nPHP for Backend Development: If you\'re interested in server-side scripting, consider PHP for backend development.</span></span>', 'https://oracle-devrel.github.io/devo-image-repository/seo-thumbnails/php---Thumbnail-1200-x-630.jpg', '', 'php.pdf', '465', '3.8', 0),
(5, 'AWS', 'Teacher', 2, 'BEST AWS', 'documents/DriveIntoAWS-course.jpg', 'title-artist.mp4', 'overview-aws-cloud-adoption-framework.pdf', '555', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE `enroll` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enroll`
--

INSERT INTO `enroll` (`id`, `course_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `enroll`
--
ALTER TABLE `enroll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
