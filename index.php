<?php
/*
 * Author: Coding Mahib
 * Web: codingmahib.github.io
 */
//require('classes/search.php');
?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CMSEARCH</title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link href="assets/img/cm.png" rel="shortcut icon"/>
</head>
<?php
if(!isset($_GET['s'])){
    
?>
<body class="bg-light text-center">
<div class="container">
<br>
<h3 class="text-dark">CMSEARCH</h3>
<br />
<form method="GET">
<input type="search" name="s" class="form-control"/>
<button class="fas fa-search" type="submit"></button>
</form>
</div>
</body>
<?php
}else{
    $s = $_GET['s'];
    ?>
    <body class="bg-light text-center">
    <br />
    <h3 class="text-dark">CMSEARCH</h3>
    <form>
    <input type="search" class="form-control" value="<?php echo $s; ?>" name="s">
    </form>
    <br>
    <?php
    
    /*
    $sE = new search();
    $sE->host = 'localhost';
    $sE->user = 'root';
    $sE->pass = '';
    $sE->db = 'search';
    $sE->connect('','','','');
    $sE->key = $s;
    while($data=$sE->results()){
        echo $data['title'];
    }*/
    $con = mysqli_connect('localhost:3306','root','','search');
    $sql = mysqli_query($con, "SELECT * FROM data WHERE title LIKE '%$s%' OR description LIKE '%$s%' OR url LIKE '%$s%' ORDER BY ranking DESC");
    $row = mysqli_num_rows($sql);
    if($row == 0){
        ?>
        <p class="text-info">No results found for '<?php echo $s; ?>'</p>
        
        <?php
    }else{
        ?>
        <p class="text text-info">There are <?php echo $row; ?> results for '<?php echo $s; ?>'</p>
        <?php
    }
    while($data=mysqli_fetch_array($sql)){
        ?>
        <div class="card bg-dark text-white">
        <small class="text"><?php echo $data['url'] ?></small>
        <h3 class="text"><a class="text-white" href="redirect.php?url=<?php echo $data['url']; ?>"><?php echo $data['title'];?></a></h3>
        <h6 class="text"><?php echo $data['description']; ?></h6>
        <br />
        </div>
        <br />
        <?php
    }
    
    
    
}
?>
<br />
<footer>Powered by Coding Mahib</footer>
</body>
</html>
