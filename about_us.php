<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Home Page</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="includes.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<?php include("header.php"); ?>
	<?php include("nav.php"); ?>

	<div class="container1">
		<div class="content">
			<!-- Introduction Row -->
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">About Us
						<small>It's Nice to Meet You!</small>
					</h1>
					<p font-size=20px>We at <strong>WeBlog</strong> provides you  the best platform where you can express your ideas and get help from others sitting across the globe.</p>
				</div>
			</div>

            <div class="col-sm-12">
        		<div class="col-sm-8">
    				<h2 class="page-header">Rules and Regulations</h2>
    				<p>All users are expected to follow the following rules while making use of our site:-
    				<ul>
    					<li>Posts and comments should only be in English.</li>
    					<li>Do not post inappropriate content. Inappropriate posts will be taken down.</li>
    					<li>Do not act rude to other users. Be polite even when disagreeing with others.</li>
    					<li>Respect others' opinions and views.</li>
    					<li>No comment wars.</li>
    					<li>No link litter.</li>
    				</ul>
    				<p>Violating above rules will result into removal of the concerned user.</p>
    				<p>Hope you have a fun time here!</p>
    				<p class="text-right">-WeBlog Team</p>
    			</div>
    		</div>

			<!-- Team Members Row -->
			<div class="row">
				<div class="col-lg-12">
					<h2 class="page-header">Our Team</h2>
				</div>
				<div class="col-lg-6 col-sm-3  text-center">
					<img class="img-circle img-responsive img-center " src="http://placehold.it/200x200" alt="">
					<h3 >Akhil Powar
						<small>B.Tech (Computer)</small>
					</h3>
					<p></p>
				</div>
				<div class="col-lg-6 col-sm-3  text-center">
					<img class="img-circle img-responsive img-center" src="http://placehold.it/200x200" alt="">
					<h3 >Praveen Kumar Suthar
						<small>B.Tech (Computer)</small>
					</h3>
					<p></p>
				</div>

				<br>
				<?php include("footer.php");?>

			</div>
		</div>
	</div>
</body>
</html>
