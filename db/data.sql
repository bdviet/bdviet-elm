/*
SQLyog Community v12.3.3 (64 bit)
MySQL - 10.1.25-MariaDB : Database - capstone
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`capstone` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `capstone`;

/*Table structure for table `activity_log` */

DROP TABLE IF EXISTS `activity_log`;

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET latin1 NOT NULL,
  `date` varchar(100) CHARACTER SET latin1 NOT NULL,
  `action` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`activity_log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `activity_log` */

insert  into `activity_log`(`activity_log_id`,`username`,`date`,`action`) values 
(1,'jkev','2013-11-18 15:25:33','Add Subject RIZAL'),
(2,'jkev','2013-11-18 15:27:08','Edit Subject RIZAL'),
(3,'','2013-11-18 15:30:46','Edit Subject IS 221'),
(4,'','2013-11-18 15:31:12','Edit Subject IS 222'),
(5,'','2013-11-18 15:31:24','Edit Subject IS 223'),
(6,'','2013-11-18 15:31:34','Edit Subject IS 224'),
(7,'','2013-11-18 15:31:54','Edit Subject IS 227'),
(8,'','2013-11-18 15:32:37','Add Subject IS 411B'),
(9,'','2013-11-18 15:34:54','Edit User jkev'),
(10,'jkev','2014-01-17 13:26:18','Add User admin'),
(11,'admin','2017-10-04 19:25:55','Add School Year 2015-2016'),
(12,'admin','2017-10-04 19:26:01','Add School Year 2016-2017');

/*Table structure for table `answer` */

DROP TABLE IF EXISTS `answer`;

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) CHARACTER SET latin1 NOT NULL,
  `choices` varchar(3) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

/*Data for the table `answer` */

insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values 
(81,32,'john','A'),
(82,32,'smith','B'),
(83,32,'kevin','C'),
(84,32,'lorayna','D'),
(85,34,'Peso','A'),
(86,34,'PHP Hypertext','B'),
(87,34,'PHP Hypertext Preprosesor','C'),
(88,34,'Philippines','D');

/*Table structure for table `assignment` */

DROP TABLE IF EXISTS `assignment`;

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL AUTO_INCREMENT,
  `floc` varchar(300) CHARACTER SET latin1 NOT NULL,
  `fdatein` varchar(100) CHARACTER SET latin1 NOT NULL,
  `fdesc` varchar(100) CHARACTER SET latin1 NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`assignment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `assignment` */

insert  into `assignment`(`assignment_id`,`floc`,`fdatein`,`fdesc`,`teacher_id`,`class_id`,`fname`) values 
(3,'uploads/3617_File_login.mdb','2013-10-28 19:35:28','q',9,8,'q'),
(4,'admin/uploads/7146_File_normalization.ppt','2013-10-30 18:48:15','fsaf',9,8,'fsaf'),
(5,'admin/uploads/7784_File_ABSTRACT.docx','2013-10-30 18:48:33','fsaf',9,8,'dsaf'),
(6,'admin/uploads/4536_File_ABSTRACT.docx','2013-10-30 18:53:32','file',9,8,'abstract'),
(10,'admin/uploads/2209_File_598378_543547629007198_436971088_n.jpg','2013-11-01 13:13:18','fsafasf',9,8,'Assignment#2'),
(11,'admin/uploads/1511_File_bootstrap.css','2013-11-01 13:18:25','sdsa',9,8,'css');

/*Table structure for table `class` */

DROP TABLE IF EXISTS `class`;

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `class` */

insert  into `class`(`class_id`,`class_name`) values 
(8,'EL-LUONG02'),
(13,'EL-LUONG01');

/*Table structure for table `class_quiz` */

DROP TABLE IF EXISTS `class_quiz`;

CREATE TABLE `class_quiz` (
  `class_quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_time` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  PRIMARY KEY (`class_quiz_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `class_quiz` */

insert  into `class_quiz`(`class_quiz_id`,`teacher_class_id`,`quiz_time`,`quiz_id`) values 
(13,167,3600,3),
(14,167,3600,3),
(15,167,1800,3),
(16,185,900,0);

/*Table structure for table `class_subject_overview` */

DROP TABLE IF EXISTS `class_subject_overview`;

CREATE TABLE `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`class_subject_overview_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `class_subject_overview` */

insert  into `class_subject_overview`(`class_subject_overview_id`,`teacher_class_id`,`content`) values 
(1,167,'<p>Chapter&nbsp; 1</p>\r\n\r\n<p>Cha</p>\r\n');

/*Table structure for table `content` */

DROP TABLE IF EXISTS `content`;

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `content` mediumtext CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `content` */

insert  into `content`(`content_id`,`title`,`content`) values 
(1,'Mission','<pre>\r\n<span style=\"font-size:16px\"><strong>Mission</strong></span></pre>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-family:arial,helvetica,sans-serif; font-size:medium\"><span style=\"font-size:large\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span>&nbsp; &nbsp;<span style=\"font-size:18px\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; A leading institution in higher and continuing education commited to engage in quality instruction, development-oriented research sustinable lucrative economic enterprise, and responsive extension and training services through relevant academic programs to empower a human resource that responds effectively to challenges in life and acts as catalyst in the holistoic development of a humane society.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:left\">&nbsp;</p>\r\n'),
(2,'Vision','<pre><span style=\"font-size: large;\"><strong>Vision</strong></span></pre>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size: large;\">&nbsp; Driven by its passion for continous improvement, the State College has to vigorously pursue distinction and proficieny in delivering its statutory functions to the Filipino people in the fields of education, business, agro-fishery, industrial, science and technology, through committed and competent human resource, guided by the beacon of innovation and productivity towards the heights of elevated status. </span><br /><br /></p>'),
(3,'History','<pre><span style=\"font-size: large;\">HISTORY &nbsp;</span> </pre>\r\n<p style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Carlos Hilado Memorial State College, formerly Paglaum State College, is a public educational institution that aims to provide higher technological, professional and vocational instruction and training in science, agriculture and industrial fields as well as short term or vocational courses. It was Batas Pambansa Bilang 477 which integrated these three institutions of learning: the Negros Occidental College of Arts and Trades (NOCAT) in the Municipality of Talisay, Bacolod City National Trade School (BCNTS) in Alijis, Bacolod City, and the Negros Occidental Provincial Community College (NOPCC) in Bacolod City, into a tertiary state educational institution to be called Paglaum State College. Approved in 1983, the College Charter was implemented effective January 1, 1984, with Mr. Sulpicio P. Cartera as its President. The administrative seat of the first state college in Negros Occidental is located at the Talisay Campus which was originally established as Negros Occidental School of Arts and Trades (NOSAT) under R.A. 848, authored and sponsored by Hon. Carlos Hilado. It occupies a five-hectare land donated by the provincial government under Provincial Board Resolution No. 1163. The renaming of the college to Carlos Hilado Memorial State College was effected by virtue of House Bill No. 7707 authored by then Congressman Jose Carlos V. Lacson of the 3rd Congressional District, Province of Negros Occidental, and which finally became a law on May 5, 1994</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp; Talisay Campus. July 1, 1954 marked the formal opening of NOSAT with Mr. Francisco Apilado as its first Superintendent and Mr. Gil H. Tenefrancia as Principal. There were five (5) full time teachers, with an initial enrolment of eighty-nine (89) secondary and trade technical students. The shop courses were General Metal Works, Practical Electricity and Woodworking. The first classes were held temporarily at Talisay Elementary School while the shop buildings and classrooms were under construction. NOSAT was a recipient of FOA-PHILCUA aid in terms of technical books, equipment, tools and machinery. Alijis Campus. The Alijis Campus of the Carlos Hilado Memorial State College is situated in a 5-hectare lot located at Barangay Alijis, Bacolod City. The lot was a donation of the late Dr. Antonio Lizares. The school was formerly established as the Bacolod City National Trade School. The establishment of this trade technical institution is pursuant to R.A. 3886 in 1968, authored by the late Congressman Inocencio V. Ferrer of the second congressional district of the Province of Negros Occidental. Fortune Towne. The Fortune Towne Campus of the Carlos Hilado Memorial State College was originally situated in Negros Occidental High School (NOHS), Bacolod City on a lot owned by the Provincial Government under Provincial Board Resolution No. 91 series of 1970. The school was formerly established as the Negros Occidental Provincial Community College and formally opened on July 13, 1970 with the following course offerings: Bachelor of Arts, Technical Education and Bachelor of Commerce. The initial operation of the school started in July 13, 1970, with an initial enrolment of 209 students. Classes were first housed at the Negros Occidental High School while the first building was constructed. Then Governor Alfredo L. Montelibano spearheaded the first operation of the NOPCC along with the members of the Board of Trustees. In June 1995, the campus transferred to its new site in Fortune Towne, Bacolod City. Binalbagan Campus. On Nov. 24, 2000, the Negros Occidental School of Fisheries (NOSOF) in Binalbagan, Negros Occidental was integrated to the Carlos Hilado Memorial State College system as an external campus by virtue of Resolution No. 46 series of 2000.</p>'),
(4,'Footer','<p style=\"text-align:center\">CHMSC Online Learning Managenment System</p>\r\n\r\n<p style=\"text-align:center\">All Rights Reserved &reg;2013</p>\r\n'),
(5,'Upcoming Events','<pre>\r\nUP COMING EVENTS</pre>\r\n\r\n<p><strong>&gt;</strong> EXAM</p>\r\n\r\n<p><strong>&gt;</strong> INTERCAMPUS MEET</p>\r\n\r\n<p><strong>&gt;</strong> DEFENSE</p>\r\n\r\n<p><strong>&gt;</strong> ENROLLMENT</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(6,'Title','<p><span style=\"font-family:trebuchet ms,geneva\">CHMSC Online Learning Management System</span></p>\r\n'),
(7,'News','<pre>\r\n<span style=\"font-size:medium\"><em><strong>Recent News\r\n</strong></em></span></pre>\r\n\r\n<h2><span style=\"font-size:small\">Extension and Community Services</span></h2>\r\n\r\n<p style=\"text-align:justify\">This technology package was promoted by the College of Industrial Technology Unit is an index to offer Practical Skills and Livelihood Training Program particularly to the Ina ngTahanan of Tayabas, Barangay Zone 15, Talisay City, Negros Occidental</p>\r\n\r\n<p style=\"text-align:justify\">The respondent of this technology package were mostly &ldquo;ina&rdquo; or mothers in PurokTayabas. There were twenty mothers who responded to the call of training and enhancing their sewing skills. The beginners projects include an apron, elastics waist skirts, pillow-cover and t-shirt style top. Short sleeve blouses with buttonholes or contoured seaming are also some of the many projects introduced to the mothers. Based on the interview conducted after the culmination activity, the projects done contributed as a means of earning to the respondents.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; In support to the thrust of the government to improve the health status of neighboring barangays, the Faculty and Staff of CHMSC ECS Fortune Towne, Bacolod City, launched its Medical Mission in Patag, Silay City. It was conducted last March 2010, to address the health needs of the people. A medical consultation is given to the residents of SitioPatag to attend to their health related problems that may need medical treatment. Medical tablets for headache, flu, fever, antibiotics and others were availed by the residents.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;The BAYAN-ANIHAN is a Food Production Program with a battle cry of &ldquo;GOODBYE GUTOM&rdquo;, advocating its legacy &ldquo;Food on the Table for every Filipino Family&rdquo; through backyard gardening. NGO&rsquo;s, governmental organizations, private and public sectors, business sectors are the cooperating agencies that support and facilitate this project and Carlos Hilado Memorial State College (CHMSC) is one of the identified partner school. Being a member institution in advocating its thrust, the school through its Extension and Community Services had conducted capability training workshop along this program identifying two deputy coordinators and trainers last November 26,27 and 28, 2009, with the end in view of implementing the project all throughout the neighboring towns, provinces and regions to help address poverty in the country. Program beneficiaries were the selected families of GawadKalinga (GK) in Hope Village, Brgy. Cabatangan, Talisay City, with 120 families beneficiaries; GK FIAT Village in Silay City with 30 beneficiaries; Bonbon Dream Village brgy. E. Lopez, Silay City with 60 beneficiaries; and respectively Had. Teresita and Had. Carmen in Talisay City, Negros Occidental both with 60 member beneficiaries. This program was introduced to 30 household members with the end in view of alleviating the quality standards of their living.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">The extension &amp; Community Services of the College conducted a series of consultations and meetings with the different local government units to assess technology needs to determines potential products to be developed considering the abundance of raw materials in their respective areas and their product marketability. The project was released in November 2009 in six cities in the province of Negros Occidental, namely San Carlos, Sagay, Silay, Bago, Himamaylan and Sipalay and the Municipality of E. B Magalona</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The City of San Carlos focused on peanut and fish processing. Sagay and bago focused on meat processing, while Silay City on fish processing. The City of Himamaylan is on sardines, and in Sipalay focused on fish processing specially on their famous BARONGAY product. The municipality of E.B Magalona focused on bangus deboning.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The food technology instructors are tasked to provide the needed skills along with the TLDC Livelihood project that each City is embarking on while the local government units provide the training venue for the project and the training equipment and machine were provided by the Department of Science and Technology.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n'),
(8,'Announcements','<pre>\r\n<span style=\"font-size:medium\"><em><strong>Announcements</strong></em></span></pre>\r\n\r\n<p>Examination Period: October 9-11, 2013</p>\r\n\r\n<p>Semestrial Break: October 12- November 3, 2013</p>\r\n\r\n<p>FASKFJASKFAFASFMFAS</p>\r\n\r\n<p>GASGA</p>\r\n'),
(10,'Calendar','<pre style=\"text-align:center\">\r\n<span style=\"font-size:medium\"><strong>&nbsp;CALENDAR OF EVENT</strong></span></pre>\r\n\r\n<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:1.6em; margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>First Semester &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>June 10, 2013 to October 11, 2013&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Semestral Break</p>\r\n			</td>\r\n			<td>\r\n			<p>Oct. 12, 2013 to November 3, 2013</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Second Semester</p>\r\n			</td>\r\n			<td>\r\n			<p>Nov. 5, 2013 to March 27, 2014</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Summer Break</p>\r\n			</td>\r\n			<td>\r\n			<p>March 27, 2014 to April 8, 2014</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Summer</p>\r\n			</td>\r\n			<td>\r\n			<p>April 8 , 2014 to May 24, 2014</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:1.6em; margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p><strong>June 5, 2013 to October 11, 2013 &ndash; First Semester AY 2013-2014</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 4, 2013 &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>Orientation with the Parents of the College&nbsp;Freshmen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 5</p>\r\n			</td>\r\n			<td>\r\n			<p>First Day of Service</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 5</p>\r\n			</td>\r\n			<td>\r\n			<p>College Personnel General Assembly</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 6,7</p>\r\n			</td>\r\n			<td>\r\n			<p>In-Service Training (Departmental)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 10</p>\r\n			</td>\r\n			<td>\r\n			<p>First Day of Classes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 14</p>\r\n			</td>\r\n			<td>\r\n			<p>Orientation with Students by College/Campus/Department</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 19,20,21</p>\r\n			</td>\r\n			<td>\r\n			<p>Branch/Campus Visit for Administrative / Academic/Accreditation/ Concerns</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"2\">\r\n			<p>June</p>\r\n			</td>\r\n			<td>\r\n			<p>Club Organizations (By Discipline/Programs)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Student Affiliation/Induction Programs</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>July</p>\r\n			</td>\r\n			<td>\r\n			<p>Nutrition Month (Sponsor: Laboratory School)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>July 11, 12</p>\r\n			</td>\r\n			<td>\r\n			<p>Long Tests</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August&nbsp; 8, 9</p>\r\n			</td>\r\n			<td>\r\n			<p>Midterm Examinations</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August 19</p>\r\n			</td>\r\n			<td>\r\n			<p>ArawngLahi</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August 23</p>\r\n			</td>\r\n			<td>\r\n			<p>Submission of Grade Sheets for Midterm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August</p>\r\n			</td>\r\n			<td>\r\n			<p>Recognition Program (Dean&rsquo;s List)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August 26</p>\r\n			</td>\r\n			<td>\r\n			<p>National Heroes Day (Regular Holiday)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August 28, 29, 30</p>\r\n			</td>\r\n			<td>\r\n			<p>Sports and Cultural Meet</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>September 19,20</p>\r\n			</td>\r\n			<td>\r\n			<p>Long Tests</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>October 5</p>\r\n			</td>\r\n			<td>\r\n			<p>Teachers&rsquo; Day / World Teachers&rsquo; Day</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>October 10, 11</p>\r\n			</td>\r\n			<td>\r\n			<p>Final Examination</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>October 12</p>\r\n			</td>\r\n			<td>\r\n			<p>Semestral Break</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p><strong>Nov. 4, 2013 to March 27, 2014 &ndash; Second Semester AY 2013-2014</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>Start of Classes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 19, 20, 21, 22</p>\r\n			</td>\r\n			<td>\r\n			<p>Intercampus Sports and Cultural Fest/College Week</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 5, 6</p>\r\n			</td>\r\n			<td>\r\n			<p>Long Tests</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 19,20</p>\r\n			</td>\r\n			<td>\r\n			<p>Thanksgiving Celebrations</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 21</p>\r\n			</td>\r\n			<td>\r\n			<p>Start of Christmas Vacation</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 25</p>\r\n			</td>\r\n			<td>\r\n			<p>Christmas Day (Regular Holiday)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 30</p>\r\n			</td>\r\n			<td>\r\n			<p>Rizal Day (Regular Holiday)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>January 6, 2014</p>\r\n			</td>\r\n			<td>\r\n			<p>Classes Resume</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>January 9, 10</p>\r\n			</td>\r\n			<td>\r\n			<p>Midterm Examinations</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>January 29</p>\r\n			</td>\r\n			<td>\r\n			<p>Submission of Grades Sheets for Midterm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>February 13, 14</p>\r\n			</td>\r\n			<td>\r\n			<p>Long Tests</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>March 6, 7</p>\r\n			</td>\r\n			<td>\r\n			<p>Final Examinations (Graduating)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>March 13, 14</p>\r\n			</td>\r\n			<td>\r\n			<p>Final Examinations (Non-Graduating)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>March 17, 18, 19, 20, 21</p>\r\n			</td>\r\n			<td>\r\n			<p>Recognition / Graduation Rites</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>March 27</p>\r\n			</td>\r\n			<td>\r\n			<p>Last Day of Service for Faculty</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 5, 2014</p>\r\n			</td>\r\n			<td>\r\n			<p>First Day of Service for SY 2014-2015</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>FLAG RAISING CEREMONY-TALISAY CAMPUS</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>MONTHS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>UNIT-IN-CHARGE</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June, Sept. and Dec. 2013, March 2014</p>\r\n			</td>\r\n			<td>\r\n			<p>COE</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>July and October 2013, Jan. 2014</p>\r\n			</td>\r\n			<td>\r\n			<p>SAS</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August and November 2013, Feb. 2014</p>\r\n\r\n			<p>April and May 2014</p>\r\n			</td>\r\n			<td>\r\n			<p>CIT</p>\r\n\r\n			<p>GASS</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n'),
(11,'Directories','<div class=\"jsn-article-content\" style=\"text-align: left;\">\r\n<pre>\r\n<span style=\"font-size:medium\"><em><strong>DIRECTORIES</strong></em></span></pre>\r\n\r\n<ul>\r\n	<li>Lab School - 712-0848</li>\r\n	<li>Accounting - 495-5560</li>\r\n	<li>Presidents Office - 495-4064(telefax)</li>\r\n	<li>VPA/PME - 495-1635</li>\r\n	<li>Registrar Office - 495-4657(telefax)</li>\r\n	<li>Cashier - 712-7272</li>\r\n	<li>CIT - 712-0670</li>\r\n	<li>SAS/COE - 495-6017</li>\r\n	<li>BAC - 712-8404(telefax)</li>\r\n	<li>Records - 495-3470</li>\r\n	<li>Supply - 495-3767</li>\r\n	<li>Internet Lab - 712-6144/712-6459</li>\r\n	<li>COA - 495-5748</li>\r\n	<li>Guard House - 476-1600</li>\r\n	<li>HRM - 495-4996</li>\r\n	<li>Extension - 457-2819</li>\r\n	<li>Canteen - 495-5396</li>\r\n	<li>Research - 712-8464</li>\r\n	<li>Library - 495-5143</li>\r\n	<li>OSA - 495-1152</li>\r\n</ul>\r\n</div>\r\n'),
(12,'president','<p>It is my great pleasure and privilege to welcome you to CHMSC&rsquo;s official website. Accept my deep appreciation for continuously taking interest in CHMSC and its programs and activities.<br /> Recently, the challenges of the knowledge era of the 21st Century led me to think very deeply how educational institutions of higher learning must vigorously pursue relevant e<img style=\"float: left;\" src=\"images/president.jpg\" alt=\"\" />ducation to compete with and respond to the challenges of globalization. As an international fellow, I realized that in the face of this globalization and technological advancement, educational institutions are compelled to work extraordinary in educating the youths and enhancing their potentials for gainful employment and realization of their dreams to become effective citizens.<br /><br /> Honored and humbled to be given the opportunity for stewardship of this good College, I am fully aware that the goal is to make CHMSC as the center of excellence or development in various fields. The vision, CHMSC ExCELS: Excellence, Competence and Educational Leadership in Science and Technology is a profound battle cry for each member of CHMSC Community. A CHMSCian must be technologically and academically competent, socially mature, safety conscious with care for the environment, a good citizen and possesses high moral values. The way the College is being managed, the internal and the external culture of all stockholders, and the efforts for quality and excellence will result to the establishment of the good corporate image of the College. The hallmark is reflected as the image of the good institution.<br /><br /> The tasks at hand call for our full cooperation, support and active participation. Therefore, I urge everyone to help me in the crusade to <br /><br /></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">Provide wider access to CHMSC programs;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Harness the potentials of students thru effective teaching and learning methodologies and techniques;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Enable CHMSC Environment for All through secure green campus;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Advocate green movement, protect intellectual property and stimulate innovation;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Promote lifelong learning;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Conduct Research and Development for community and poverty alleviation;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Share and disseminate knowledge through publication and extension outreach to communities; and</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*Strengthen Institute-industry linkages and public-private partnership for mutual interest.</span></p>\r\n<p style=\"text-align: justify;\"><br /><span style=\"line-height: 1.3em; text-align: justify;\">Together, WE can make CHMSC</span></p>\r\n<p style=\"text-align: justify;\"><br /><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*A model green institution for Human Resources Development, a builder of human resources in the knowledge era of the 21st Century;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *A center for curricular innovations and research especially in education, technology, engineering, ICT and entrepreneurship; and</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *A Provider of quality graduates in professional and technological programs for industry and community.</span></p>\r\n<p style=\"text-align: justify;\"><br /><br /> Dear readers and guests, these are the challenges for every CHMSCian to hurdle and the dreams to realize. This website will be one of the connections with you as we ardently take each step. Feel free to visit often and be kept posted as we continue to work for discoveries and advancement that will bring benefits to the lives of the students, the community, and the world, as a whole.<br /><br /> Warmest welcome and I wish you well!</p>\r\n<p style=\"text-align: justify;\"><br /><br /></p>\r\n<p style=\"text-align: justify;\">RENATO M. SOROLLA, Ph.D.<br />SUC President II</p>'),
(13,'motto','<p><strong><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">CHMSC EXCELS:</span></span></strong></p>\r\n\r\n<p><strong><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">Excellence, Competence and Educational</span></span></strong></p>\r\n\r\n<p><strong><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">Leadership in Science and Technology</span></span></strong></p>\r\n'),
(14,'Campuses','<pre>\r\n<span style=\"font-size:16px\"><strong>Campuses</strong></span></pre>\r\n\r\n<ul>\r\n	<li>Alijis Campus</li>\r\n	<li>Binalbagan Campus</li>\r\n	<li>Fortunetown Campus</li>\r\n	<li>Talisay Campus<br />\r\n	&nbsp;</li>\r\n</ul>\r\n');

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `dean` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `department` */

insert  into `department`(`department_id`,`department_name`,`dean`) values 
(4,'College of Industrial Technology','Dr. Antonio Deraja'),
(5,'School of Arts and Science','DR.'),
(9,'College of Education','null');

/*Table structure for table `event` */

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) CHARACTER SET latin1 NOT NULL,
  `date_end` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `event` */

insert  into `event`(`event_id`,`event_title`,`teacher_class_id`,`date_start`,`date_end`) values 
(15,'Long Test',113,'12/05/2013','12/06/2013'),
(17,'sdasf',147,'11/16/2013','11/16/2013');

/*Table structure for table `files` */

DROP TABLE IF EXISTS `files`;

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `floc` varchar(500) CHARACTER SET latin1 NOT NULL,
  `fdatein` varchar(200) CHARACTER SET latin1 NOT NULL,
  `fdesc` varchar(100) CHARACTER SET latin1 NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) CHARACTER SET latin1 NOT NULL,
  `uploaded_by` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

/*Data for the table `files` */

insert  into `files`(`file_id`,`floc`,`fdatein`,`fdesc`,`teacher_id`,`class_id`,`fname`,`uploaded_by`) values 
(133,'admin/uploads/7939_File_449E26DB.jpg','2014-02-20 10:31:38','sas',14,177,'sss',''),
(132,'admin/uploads/7939_File_449E26DB.jpg','2014-02-20 10:29:53','sas',14,178,'sss',''),
(131,'admin/uploads/7939_File_449E26DB.jpg','2014-02-20 10:28:09','sas',14,12,'sss',''),
(129,'admin/uploads/7939_File_449E26DB.jpg','2014-02-20 10:12:38','sas',0,12,'sss',''),
(130,'admin/uploads/7939_File_449E26DB.jpg','2014-02-20 10:26:11','sas',0,12,'sss',''),
(128,'admin/uploads/7614_File_1476273_644977475552481_2029187901_n.jpg','2014-02-13 13:31:18','qwwqw',12,185,'kevi','Ruby Mae Morante'),
(127,'admin/uploads/1085_File_Resume.docx','2014-02-13 12:53:09','q',12,183,'q','Ruby Mae Morante'),
(126,'admin/uploads/7895_File_PERU REPORT.pptx','2014-02-13 12:35:42','chapter 1',12,182,'chapter 1','Ruby Mae Morante'),
(125,'admin/uploads/2658_File_kevin.docx','2014-02-13 11:10:56','test',12,181,'test','Ruby Mae Morante'),
(123,'admin/uploads/4801_File_painting-02.jpg','2013-12-11 12:02:46','jdkasjfd',12,163,'Test','Ruby Mae Morante'),
(122,'admin/uploads/3985_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif','2013-12-07 20:00:22','dasdasd',12,145,'dasd','Ruby Mae Morante'),
(121,'admin/uploads/7439_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif','2013-12-07 19:59:46','asdad',12,162,'kevin','Ruby Mae Morante'),
(120,'admin/uploads/7439_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif','2013-12-07 19:59:46','asdad',12,145,'kevin','Ruby Mae Morante'),
(119,'admin/uploads/3166_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif','2013-12-07 19:58:44','kevin',12,145,'kevin','Ruby Mae Morante'),
(118,'admin/uploads/4849_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif','2013-11-26 23:59:20','q',0,162,'qq','StephanieVillanueva'),
(117,'admin/uploads/9467_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif','2013-11-26 10:42:37','test',0,162,'report group 1','MarrianneTumala'),
(116,'admin/uploads/5990_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif','2013-11-26 02:51:24','w',12,162,'w','Ruby Mae Morante'),
(115,'admin/uploads/5990_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif','2013-11-26 02:51:24','w',12,145,'w','Ruby Mae Morante'),
(138,'admin/uploads/5587_File_IMG_1487.JPG','2017-10-04 11:39:25','Bai giang thu 1',9,187,'Tai lieu Hoc Tap','GIAO VIEN01');

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) CHARACTER SET latin1 NOT NULL,
  `date_sended` varchar(100) CHARACTER SET latin1 NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `sender_name` varchar(200) CHARACTER SET latin1 NOT NULL,
  `message_status` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

/*Data for the table `message` */

insert  into `message`(`message_id`,`reciever_id`,`content`,`date_sended`,`sender_id`,`reciever_name`,`sender_name`,`message_status`) values 
(2,11,'fasf','2013-11-13 13:15:47',42,'Aladin Cabrera','john kevin lorayna',''),
(4,71,'bcjhbcjksdbckldj','2013-11-25 15:59:13',71,'Noli Mendoza','Noli Mendoza','read'),
(17,12,'tst','2013-12-01 23:38:40',93,'Ruby Mae  Morante','John Kevin  Lorayna',''),
(19,12,'fasfaf','2013-12-01 23:56:17',93,'Ruby Mae  Morante','John Kevin  Lorayna',''),
(27,93,'fa','2013-12-02 00:01:54',12,'John Kevin  Lorayna','Ruby Mae  Morante',''),
(28,136,'Submit your classcard','2014-02-13 13:35:21',12,'Jorgielyn Serfino','Ruby Mae  Morante',''),
(29,113,'hello','2017-10-04 11:42:03',112,'HOC SINH 01','HOC SINH 02',''),
(30,112,'Hello láº¡i','2017-10-04 11:42:29',113,'HOC SINH 02','HOC SINH 01',''),
(32,9,'sadasd','2017-10-04 11:43:16',112,'GIAO VIEN 01','HOC SINH 02','');

/*Table structure for table `message_sent` */

DROP TABLE IF EXISTS `message_sent`;

CREATE TABLE `message_sent` (
  `message_sent_id` int(11) NOT NULL AUTO_INCREMENT,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) CHARACTER SET latin1 NOT NULL,
  `date_sended` varchar(100) CHARACTER SET latin1 NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `sender_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`message_sent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `message_sent` */

insert  into `message_sent`(`message_sent_id`,`reciever_id`,`content`,`date_sended`,`sender_id`,`reciever_name`,`sender_name`) values 
(1,42,'sad','2013-11-12 22:50:05',42,'john kevin lorayna','john kevin lorayna'),
(2,11,'fasf','2013-11-13 13:15:47',42,'Aladin Cabrera','john kevin lorayna'),
(3,12,'bjhkcbkjsdnckldvls','2013-11-25 15:58:55',71,'Ruby Mae  Morante','Noli Mendoza'),
(4,71,'bcjhbcjksdbckldj','2013-11-25 15:59:13',71,'Noli Mendoza','Noli Mendoza'),
(5,12,'test','2013-11-30 20:54:05',93,'Ruby Mae  Morante','John Kevin  Lorayna'),
(11,12,'tst','2013-12-01 23:38:40',93,'Ruby Mae  Morante','John Kevin  Lorayna'),
(12,12,'fasfasf','2013-12-01 23:49:13',93,'Ruby Mae  Morante','John Kevin  Lorayna'),
(13,136,'Submit your classcard','2014-02-13 13:35:21',12,'Jorgielyn Serfino','Ruby Mae  Morante'),
(14,113,'hello','2017-10-04 11:42:04',112,'HOC SINH 01','HOC SINH 02'),
(15,112,'Hello láº¡i','2017-10-04 11:42:29',113,'HOC SINH 02','HOC SINH 01'),
(16,9,'Há»i bÃ i táº­p','2017-10-04 11:43:01',112,'GIAO VIEN 01','HOC SINH 02'),
(17,9,'sadasd','2017-10-04 11:43:16',112,'GIAO VIEN 01','HOC SINH 02');

/*Table structure for table `notification` */

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) CHARACTER SET latin1 NOT NULL,
  `date_of_notification` varchar(50) CHARACTER SET latin1 NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `notification` */

insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values 
(2,0,'Add Downloadable Materials file name <b>sss</b>','2014-01-17 14:35:32','downloadable_student.php'),
(3,167,'Add Annoucements','2014-01-17 14:36:32','announcements_student.php'),
(4,0,'Add Downloadable Materials file name <b>test</b>','2014-02-13 11:10:56','downloadable_student.php'),
(5,167,'Add Assignment file name <b>q</b>','2014-02-13 11:27:59','assignment_student.php'),
(6,0,'Add Downloadable Materials file name <b>chapter 1</b>','2014-02-13 12:35:42','downloadable_student.php'),
(7,0,'Add Downloadable Materials file name <b>q</b>','2014-02-13 12:53:09','downloadable_student.php'),
(8,0,'Add Downloadable Materials file name <b>kevi</b>','2014-02-13 13:31:18','downloadable_student.php'),
(9,185,'Add Practice Quiz file','2014-02-13 13:33:27','student_quiz_list.php'),
(10,167,'Add Annoucements','2014-02-13 13:45:59','announcements_student.php'),
(11,0,'Add Downloadable Materials file name <b>q</b>','2014-02-21 16:43:38','downloadable_student.php'),
(12,0,'Add Downloadable Materials file name <b>q</b>','2014-02-21 16:46:18','downloadable_student.php'),
(13,0,'Add Downloadable Materials file name <b>q</b>','2014-02-21 16:46:49','downloadable_student.php'),
(14,0,'Add Downloadable Materials file name <b>q</b>','2014-02-21 16:52:30','downloadable_student.php'),
(15,0,'Add Downloadable Materials file name <b>Tai lieu Hoc Tap</b>','2017-10-04 11:39:25','downloadable_student.php');

/*Table structure for table `notification_read` */

DROP TABLE IF EXISTS `notification_read`;

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) CHARACTER SET latin1 NOT NULL,
  `notification_id` int(11) NOT NULL,
  PRIMARY KEY (`notification_read_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `notification_read` */

/*Table structure for table `notification_read_teacher` */

DROP TABLE IF EXISTS `notification_read_teacher`;

CREATE TABLE `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) CHARACTER SET latin1 NOT NULL,
  `notification_id` int(11) NOT NULL,
  PRIMARY KEY (`notification_read_teacher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `notification_read_teacher` */

insert  into `notification_read_teacher`(`notification_read_teacher_id`,`teacher_id`,`student_read`,`notification_id`) values 
(1,12,'yes',14),
(2,12,'yes',13),
(3,12,'yes',12),
(4,12,'yes',11),
(5,12,'yes',10),
(6,12,'yes',9),
(7,12,'yes',8),
(8,12,'yes',7),
(9,9,'yes',17),
(10,9,'yes',15);

/*Table structure for table `question_type` */

DROP TABLE IF EXISTS `question_type`;

CREATE TABLE `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`question_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `question_type` */

insert  into `question_type`(`question_type_id`,`question_type`) values 
(1,'Multiple Choice'),
(2,'True or False');

/*Table structure for table `quiz` */

DROP TABLE IF EXISTS `quiz`;

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_title` varchar(50) CHARACTER SET latin1 NOT NULL,
  `quiz_description` varchar(100) CHARACTER SET latin1 NOT NULL,
  `date_added` varchar(100) CHARACTER SET latin1 NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`quiz_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `quiz` */

insert  into `quiz`(`quiz_id`,`quiz_title`,`quiz_description`,`date_added`,`teacher_id`) values 
(3,'Sample Test','Test','2013-12-03 23:01:56',12),
(4,'Chapter 1','topics','2013-12-13 01:51:02',14),
(5,'test3','123','2014-01-16 04:12:07',12);

/*Table structure for table `quiz_question` */

DROP TABLE IF EXISTS `quiz_question`;

CREATE TABLE `quiz_question` (
  `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) CHARACTER SET latin1 NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) CHARACTER SET latin1 NOT NULL,
  `answer` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`quiz_question_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

/*Data for the table `quiz_question` */

insert  into `quiz_question`(`quiz_question_id`,`quiz_id`,`question_text`,`question_type_id`,`points`,`date_added`,`answer`) values 
(33,5,'<p>q</p>\r\n',2,0,'2014-01-17 04:15:03','False'),
(34,3,'<p>Php Stands for ?</p>\r\n',1,0,'2014-01-17 12:25:17','C'),
(35,3,'<p>Echo is a Php code that display the output.</p>\r\n',2,0,'2014-01-17 12:26:18','True');

/*Table structure for table `school_year` */

DROP TABLE IF EXISTS `school_year`;

CREATE TABLE `school_year` (
  `school_year_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_year` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`school_year_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `school_year` */

insert  into `school_year`(`school_year_id`,`school_year`) values 
(2,'2012-2013'),
(3,'2013-2014'),
(5,'2016-2017');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) CHARACTER SET latin1 NOT NULL,
  `lastname` varchar(100) CHARACTER SET latin1 NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 NOT NULL,
  `location` varchar(100) CHARACTER SET latin1 NOT NULL,
  `status` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`student_id`,`firstname`,`lastname`,`class_id`,`username`,`password`,`location`,`status`) values 
(255,'Hãnh Nguy?n','V?n',13,'abc','202cb962ac59075b964b07152d234b70','uploads/NO-IMAGE-AVAILABLE.jpg','Registered'),
(254,'Hoàng Xân V?nh','Nguy?n',13,'hoangxuan','202cb962ac59075b964b07152d234b70','uploads/NO-IMAGE-AVAILABLE.jpg','Registered'),
(253,'Bùi V?n M?nh','Ho?ng',13,'bvminh','202cb962ac59075b964b07152d234b70','uploads/NO-IMAGE-AVAILABLE.jpg','Registered'),
(252,'Bùi ??c','Vi?t',13,'bdviet','202cb962ac59075b964b07152d234b70','uploads/NO-IMAGE-AVAILABLE.jpg','Registered');

/*Table structure for table `student_assignment` */

DROP TABLE IF EXISTS `student_assignment`;

CREATE TABLE `student_assignment` (
  `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) CHARACTER SET latin1 NOT NULL,
  `assignment_fdatein` varchar(50) CHARACTER SET latin1 NOT NULL,
  `fdesc` varchar(100) CHARACTER SET latin1 NOT NULL,
  `fname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`student_assignment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

/*Data for the table `student_assignment` */

insert  into `student_assignment`(`student_assignment_id`,`assignment_id`,`floc`,`assignment_fdatein`,`fdesc`,`fname`,`student_id`,`grade`) values 
(21,13,'admin/uploads/1414_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif','2013-11-24 11:59:28','fasfasfasfsfsafasf','safas',113,''),
(22,13,'admin/uploads/5554_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif','2013-11-24 12:07:46','fasfaf','fdasf',112,'');

/*Table structure for table `student_backpack` */

DROP TABLE IF EXISTS `student_backpack`;

CREATE TABLE `student_backpack` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `floc` varchar(100) CHARACTER SET latin1 NOT NULL,
  `fdatein` varchar(100) CHARACTER SET latin1 NOT NULL,
  `fdesc` varchar(100) CHARACTER SET latin1 NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `student_backpack` */

insert  into `student_backpack`(`file_id`,`floc`,`fdatein`,`fdesc`,`student_id`,`fname`) values 
(1,'admin/uploads/2658_File_kevin.docx','2014-02-13 11:11:50','test',112,'test');

/*Table structure for table `student_class_quiz` */

DROP TABLE IF EXISTS `student_class_quiz`;

CREATE TABLE `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) CHARACTER SET latin1 NOT NULL,
  `grade` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`student_class_quiz_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `student_class_quiz` */

insert  into `student_class_quiz`(`student_class_quiz_id`,`class_quiz_id`,`student_id`,`student_quiz_time`,`grade`) values 
(1,15,112,'3600','0 out of 2'),
(2,16,113,'3600','0 out of 0');

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_code` varchar(100) CHARACTER SET latin1 NOT NULL,
  `subject_title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description` longtext CHARACTER SET latin1 NOT NULL,
  `unit` int(11) NOT NULL,
  `Pre_req` varchar(100) CHARACTER SET latin1 NOT NULL,
  `semester` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

/*Data for the table `subject` */

insert  into `subject`(`subject_id`,`subject_code`,`subject_title`,`category`,`description`,`unit`,`Pre_req`,`semester`) values 
(14,'KTLUONG','KINH TE LUONG','','<p><span style=\"font-size: medium;\"><em>About the Subject</em></span></p>\r\n<p>This subject comprisea topics about systems development, SDLC methodologies, Conceptual Framework, diagrams such as DFD, ERD and Flowchart and writing a thesis proposal.</p>\r\n<p>&nbsp;</p>\r\n<p>The project requirement for this subject are:</p>\r\n<p>Chapters (1-5) Thesis Proposal</p>\r\n<p>100% Running System at the end of semester</p>\r\n<p>&nbsp;</p>',3,'','');

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(200) CHARACTER SET latin1 NOT NULL,
  `firstname` varchar(100) CHARACTER SET latin1 NOT NULL,
  `lastname` varchar(100) CHARACTER SET latin1 NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) CHARACTER SET latin1 NOT NULL,
  `about` varchar(500) CHARACTER SET latin1 NOT NULL,
  `teacher_status` varchar(20) CHARACTER SET latin1 NOT NULL,
  `teacher_stat` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

insert  into `teacher`(`teacher_id`,`username`,`password`,`firstname`,`lastname`,`department_id`,`location`,`about`,`teacher_status`,`teacher_stat`) values 
(23,'bqhuong','202cb962ac59075b964b07152d234b70','Bùi Quang','H??ng',9,'uploads/NO-IMAGE-AVAILABLE.jpg','','Unregistered','Deactivated'),
(22,'lvman','202cb962ac59075b964b07152d234b70','Lê Vi?t','M?n',9,'uploads/NO-IMAGE-AVAILABLE.jpg','','Registered','Deactivated'),
(24,'nchuong','202cb962ac59075b964b07152d234b70','C?m H??ng','Nguy?n',9,'uploads/NO-IMAGE-AVAILABLE.jpg','','Registered','Deactivated'),
(25,'nvluyen','202cb962ac59075b964b07152d234b70','Lê V?n','Luy?n',4,'uploads/NO-IMAGE-AVAILABLE.jpg','','Registered','Deactivated');

/*Table structure for table `teacher_backpack` */

DROP TABLE IF EXISTS `teacher_backpack`;

CREATE TABLE `teacher_backpack` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `floc` varchar(100) CHARACTER SET latin1 NOT NULL,
  `fdatein` varchar(100) CHARACTER SET latin1 NOT NULL,
  `fdesc` varchar(100) CHARACTER SET latin1 NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `teacher_backpack` */

/*Table structure for table `teacher_class` */

DROP TABLE IF EXISTS `teacher_class`;

CREATE TABLE `teacher_class` (
  `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) CHARACTER SET latin1 NOT NULL,
  `school_year` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`teacher_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;

/*Data for the table `teacher_class` */

insert  into `teacher_class`(`teacher_class_id`,`teacher_id`,`class_id`,`subject_id`,`thumbnails`,`school_year`) values 
(97,9,7,14,'admin/uploads/thumbnails.jpg','2012-2013'),
(186,9,13,14,'admin/uploads/thumbnails.jpg','2016-2017'),
(187,9,13,14,'admin/uploads/thumbnails.jpg','2013-2014');

/*Table structure for table `teacher_class_announcements` */

DROP TABLE IF EXISTS `teacher_class_announcements`;

CREATE TABLE `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) CHARACTER SET latin1 NOT NULL,
  `teacher_id` varchar(100) CHARACTER SET latin1 NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`teacher_class_announcements_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

/*Data for the table `teacher_class_announcements` */

insert  into `teacher_class_announcements`(`teacher_class_announcements_id`,`content`,`teacher_id`,`teacher_class_id`,`date`) values 
(2,'<p><strong>Project Deadline</strong></p>\r\n\r\n<p>In December 1st week&nbsp; system must fully functioning.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n','9',97,'2013-10-30 13:21:13'),
(21,'<p>fsaf</p>\r\n','9',97,'2013-10-30 14:33:21'),
(31,'<p>Hi im kevin i edit this</p>\r\n','9',97,'2013-10-30 15:41:56'),
(33,'<p>hello teph</p>\r\n','9',97,'2013-10-30 17:44:28'),
(34,'<p>hello guys</p>\r\n','9',97,'2013-11-02 10:51:39');

/*Table structure for table `teacher_class_student` */

DROP TABLE IF EXISTS `teacher_class_student`;

CREATE TABLE `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`teacher_class_student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=382 DEFAULT CHARSET=utf8;

/*Data for the table `teacher_class_student` */

insert  into `teacher_class_student`(`teacher_class_student_id`,`teacher_class_id`,`student_id`,`teacher_id`) values 
(31,97,113,9),
(32,97,112,9),
(378,186,113,9),
(379,186,112,9),
(380,187,113,9),
(381,187,112,9);

/*Table structure for table `teacher_notification` */

DROP TABLE IF EXISTS `teacher_notification`;

CREATE TABLE `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) CHARACTER SET latin1 NOT NULL,
  `date_of_notification` varchar(100) CHARACTER SET latin1 NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  PRIMARY KEY (`teacher_notification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `teacher_notification` */

insert  into `teacher_notification`(`teacher_notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`,`student_id`,`assignment_id`) values 
(15,97,'Submit Assignment file name <b>my_assginment</b>','2013-11-25 10:39:52','view_submit_assignment.php',93,12),
(17,97,'Submit Assignment file name <b>q</b>','2013-11-25 15:54:19','view_submit_assignment.php',113,11);

/*Table structure for table `teacher_shared` */

DROP TABLE IF EXISTS `teacher_shared`;

CREATE TABLE `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) CHARACTER SET latin1 NOT NULL,
  `fdatein` varchar(100) CHARACTER SET latin1 NOT NULL,
  `fdesc` varchar(100) CHARACTER SET latin1 NOT NULL,
  `fname` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`teacher_shared_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `teacher_shared` */

insert  into `teacher_shared`(`teacher_shared_id`,`teacher_id`,`shared_teacher_id`,`floc`,`fdatein`,`fdesc`,`fname`) values 
(1,9,14,'admin/uploads/7939_File_449E26DB.jpg','2014-02-20 09:55:32','sas','sss'),
(2,9,9,'admin/uploads/5587_File_IMG_1487.JPG','2017-10-04 11:39:36','Bai giang thu 1','Tai lieu Hoc Tap');

/*Table structure for table `user_log` */

DROP TABLE IF EXISTS `user_log`;

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) CHARACTER SET latin1 NOT NULL,
  `login_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `logout_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`user_log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

/*Data for the table `user_log` */

insert  into `user_log`(`user_log_id`,`username`,`login_date`,`logout_date`,`user_id`) values 
(1,'admin','2013-11-01 11:57:33','2013-11-18 10:33:54',10),
(2,'admin','2013-11-05 09:52:09','2013-11-18 10:33:54',10),
(3,'admin','2013-11-08 10:41:09','2013-11-18 10:33:54',10),
(4,'admin','2013-11-12 22:53:05','2013-11-18 10:33:54',10),
(5,'admin','2013-11-13 07:07:04','2013-11-18 10:33:54',10),
(6,'admin','2013-11-13 13:07:58','2013-11-18 10:33:54',10),
(7,'admin','2013-11-13 13:30:45','2013-11-18 10:33:54',10),
(8,'admin','2013-11-13 15:25:20','2013-11-18 10:33:54',10),
(9,'admin','2013-11-13 15:46:28','2013-11-18 10:33:54',10),
(10,'admin','2013-11-13 16:04:10','2013-11-18 10:33:54',10),
(11,'admin','2013-11-13 17:31:37','2013-11-18 10:33:54',10),
(12,'admin','2013-11-13 22:47:45','2013-11-18 10:33:54',10),
(13,'admin','2013-11-14 10:27:06','2013-11-18 10:33:54',10),
(14,'admin','2013-11-14 10:27:55','2013-11-18 10:33:54',10),
(15,'admin','2013-11-14 10:38:08','2013-11-18 10:33:54',10),
(16,'admin','2013-11-14 10:38:09','2013-11-18 10:33:54',10),
(17,'admin','2013-11-14 10:41:06','2013-11-18 10:33:54',10),
(18,'admin','2013-11-14 11:44:08','2013-11-18 10:33:54',10),
(19,'admin','2013-11-14 21:53:56','2013-11-18 10:33:54',10),
(20,'admin','2013-11-14 22:03:53','2013-11-18 10:33:54',10),
(21,'admin','2013-11-16 13:40:56','2013-11-18 10:33:54',10),
(22,'admin','2013-11-18 10:22:07','2013-11-18 10:33:54',10),
(23,'jkev','2013-11-18 10:33:59','2014-02-13 11:19:36',14),
(24,'jkev','2013-11-18 15:20:45','2014-02-13 11:19:36',14),
(25,'jkev','2013-11-18 15:42:04','2014-02-13 11:19:36',14),
(26,'jkev','2013-11-18 16:30:14','2014-02-13 11:19:36',14),
(27,'jkev','2013-11-18 16:36:44','2014-02-13 11:19:36',14),
(28,'jkev','2013-11-18 17:39:55','2014-02-13 11:19:36',14),
(29,'jkev','2013-11-18 20:06:49','2014-02-13 11:19:36',14),
(30,'jkev','2013-11-23 08:04:27','2014-02-13 11:19:36',14),
(31,'teph','2013-11-23 12:02:27','2013-11-30 21:33:02',13),
(32,'teph','2013-11-24 08:55:55','2013-11-30 21:33:02',13),
(33,'jkev','2013-11-25 10:32:16','2014-02-13 11:19:36',14),
(34,'jkev','2013-11-25 14:33:05','2014-02-13 11:19:36',14),
(35,'jkev','2013-11-25 15:02:47','2014-02-13 11:19:36',14),
(36,'jkev','2013-11-25 21:08:19','2014-02-13 11:19:36',14),
(37,'jkev','2013-11-25 23:49:58','2014-02-13 11:19:36',14),
(38,'jkev','2013-11-26 00:32:22','2014-02-13 11:19:36',14),
(39,'jkev','2013-11-26 10:39:52','2014-02-13 11:19:36',14),
(40,'jkev','2013-11-26 21:48:05','2014-02-13 11:19:36',14),
(41,'jkev','2013-11-28 23:00:00','2014-02-13 11:19:36',14),
(42,'jkev','2013-11-28 23:00:06','2014-02-13 11:19:36',14),
(43,'jkev','2013-11-30 21:28:54','2014-02-13 11:19:36',14),
(44,'teph','2013-11-30 21:32:54','2013-11-30 21:33:02',13),
(45,'jkev','2013-12-04 12:45:09','2014-02-13 11:19:36',14),
(46,'teph','2013-12-04 14:02:19','',13),
(47,'jkev','2013-12-11 11:56:15','2014-02-13 11:19:36',14),
(48,'jkev','2013-12-11 12:04:44','2014-02-13 11:19:36',14),
(49,'jkev','2013-12-12 09:44:34','2014-02-13 11:19:36',14),
(50,'jkev','2013-12-13 01:48:23','2014-02-13 11:19:36',14),
(51,'jkev','2013-12-27 09:13:20','2014-02-13 11:19:36',14),
(52,'jkev','2013-12-27 10:18:38','2014-02-13 11:19:36',14),
(53,'jkev','2013-12-27 10:35:43','2014-02-13 11:19:36',14),
(54,'jkev','2013-12-27 11:08:54','2014-02-13 11:19:36',14),
(55,'jkev','2013-12-27 11:20:25','2014-02-13 11:19:36',14),
(56,'jkev','2013-12-27 11:41:58','2014-02-13 11:19:36',14),
(57,'jkev','2013-12-27 11:43:10','2014-02-13 11:19:36',14),
(58,'jkev','2013-12-27 14:54:57','2014-02-13 11:19:36',14),
(59,'jkev','2014-01-12 20:08:26','2014-02-13 11:19:36',14),
(60,'jkev','2014-01-13 15:24:07','2014-02-13 11:19:36',14),
(61,'jkev','2014-01-13 18:46:08','2014-02-13 11:19:36',14),
(62,'jkev','2014-01-15 20:40:15','2014-02-13 11:19:36',14),
(63,'jkev','2014-01-16 14:42:02','2014-02-13 11:19:36',14),
(64,'jkev','2014-01-17 09:16:17','2014-02-13 11:19:36',14),
(65,'jkev','2014-01-17 13:25:51','2014-02-13 11:19:36',14),
(66,'admin','2014-01-17 14:41:30','2014-04-03 15:30:06',15),
(67,'admin','2014-01-17 15:56:32','2014-04-03 15:30:06',15),
(68,'admin','2014-01-26 17:45:31','2014-04-03 15:30:06',15),
(69,'admin','2014-02-13 10:45:17','2014-04-03 15:30:06',15),
(70,'admin','2014-02-13 11:05:27','2014-04-03 15:30:06',15),
(71,'jkev','2014-02-13 11:16:48','2014-02-13 11:19:36',14),
(72,'admin','2014-02-13 11:55:36','2014-04-03 15:30:06',15),
(73,'admin','2014-02-13 12:32:38','2014-04-03 15:30:06',15),
(74,'admin','2014-02-13 12:52:05','2014-04-03 15:30:06',15),
(75,'admin','2014-02-13 13:04:35','2014-04-03 15:30:06',15),
(76,'jkev','2014-02-13 14:35:27','',14),
(77,'admin','2014-02-20 09:40:39','2014-04-03 15:30:06',15),
(78,'admin','2014-02-20 09:42:21','2014-04-03 15:30:06',15),
(79,'admin','2014-02-27 22:40:15','2014-04-03 15:30:06',15),
(80,'admin','2014-02-28 13:12:52','2014-04-03 15:30:06',15),
(81,'admin','2014-04-02 17:27:47','2014-04-03 15:30:06',15),
(82,'admin','2014-04-03 15:29:38','2014-04-03 15:30:06',15),
(83,'admin','2014-06-15 12:31:51','',15),
(84,'admin','2017-10-04 18:39:24','',15),
(85,'admin','2017-10-04 19:25:26','',15);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 NOT NULL,
  `firstname` varchar(100) CHARACTER SET latin1 NOT NULL,
  `lastname` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`user_id`,`username`,`password`,`firstname`,`lastname`) values 
(13,'teph','teph','Stephanie','villanueva'),
(14,'jkev','jkev','john kevin','lorayna'),
(15,'admin','admin','Quan Ly','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
