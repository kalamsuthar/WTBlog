<!--<style>
.fa-fw {margin-left:  0.5em;}
</style>-->


<div id="sidebar-wrapper">
	<nav id="sb">
		<ul class="sidebar-nav">
            <li>
				<a href="post.php" title="New Post">
					<span class="fa fa-book "></span> New Post
				</a>
			</li>
            <li>
				<a href="search.php" title="Search">
					<span class="fa fa-search "></span> Search
				</a>
			</li>
            <li>
				<a href="index.php" title="Return to Home Page">

					<span class="fa fa-home  "></span> Home Page
				</a>
			</li>
          <?php
           if(isset($_SESSION['user_id'])){
               echo '<li><a href="members-page.php" title="Member\'s Page"><span class= "fa fa-user-o "></span> My Page</a></li>';
            }
           if(isset($_SESSION['user_level']) && ($_SESSION['user_level'] == 2)){
               echo '<li><a href="admin-page.php" title="Admin Page"><span class= "fa fa-users "></span> Admin Page</a></li>';
            }
          ?>
        </ul>
	</nav>
</div>
