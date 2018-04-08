<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Search</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="includes.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>
    <?php include("header.php"); ?>
    <?php include("nav.php"); ?>
    <div class="container1">
        <?php
            if($_SERVER['REQUEST_METHOD'] == 'POST'){
                require("mysqli_connect.php");
                if(!empty($_POST['search_query'])){
                    $s_query="";
                    $terms = explode(" ", $_POST['search_query']);
                    foreach ($terms as &$word) {
                        $s_query = "$s_query%$word";
                    }
                    $s_query = "$s_query%";
                    $query = "SELECT title, content,user_id,id , DATE_FORMAT(posted,'%M %e ,%Y') as date FROM post WHERE title  LIKE '$s_query' OR CONVERT(content USING latin1) LIKE '$s_query'";
                    $result = mysqli_query($dbcon, $query);
                }
            }
        ?>
        <br>
        <form method="post" action="search.php" id="search_form">
            <div class="input-group col-sm-offset-3 col-sm-6">
                <input type="text" class="form-control" name="search_query" placeholder="Search"></input>
                <div class="input-group-btn">
                    <button type="submit" class="btn btn-default">
                        <i class="glyphicon glyphicon-search"></i>
                    </button>
                </div>
            </div>
        </form>
        <br>
        <p><?php
            if($s_query!=""){
                echo'Search results for <b>'. $_POST['search_query'] . '</b>:-';
            }
            $_POST['search_query'] = "";
        ?></p>
        <br>
        <?php
        if($_SERVER['REQUEST_METHOD'] == "POST"){
            // echo "<h2>Search results:-</h2><br>";
            // if(@mysqli_num_rows($result) > 0){
            //     echo '<ul class="nav nav-pills nav-stacked col-sm-6">';
            //     while($row = mysqli_fetch_array($result)){
            //         echo '<li><a href="view1_post.php?id=' . $row['id'] . '">' . $row['title'] . '</a></li>';
            //     }
            //     echo '</ul>';
            // }
            // else{
            //     echo '<p>No matches found!';
            // }
            while($row = mysqli_fetch_array($result)){
                 $name= "SELECT username FROM users WHERE id=".$row['user_id']."";
            			 $result1 = mysqli_query($dbcon, $name);
            			 $row1 = mysqli_fetch_array($result1);

                 $comment ="SELECT COUNT(content)as total FROM comment WHERE post_id=".$row['id']." ";
            		 $result2=mysqli_query($dbcon,$comment);
            		 $row2 = mysqli_fetch_array($result2);
                echo '<div class="well">
                      <div class="media">
                      	<a class="pull-left" href="#">
                    		<img class="media-object" src="images/Weblog.jpg">
                  		</a>
                  		<div class="media-body">
                    		<a href="view1_post.php?id='.$row['id'] .' "><h4 class="media-heading">'. $row['title']. '</h4></a>
                          <p class="text-right">By '. $row1['username']. '</p>
                          <p>'. $row['content']. '.</p>
                          <ul class="list-inline list-unstyled">
                  			<li><span><i class="glyphicon glyphicon-calendar"></i> '. $row['date']. ' </span></li>
                            <li>|</li><li> </li>
                            <span><i class="glyphicon glyphicon-comment"></i> '.$row2['total'].'</span>
                            </ul>
                       </div>
                    </div>
                  </div>';
              }
        }
        ?>
        <?php include("footer.php"); ?>
    </div>
</body>
</html>
