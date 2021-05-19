<style>
.mb-logo {
    width: 65%;
    float: left;
    display:none;
}

.dropdown-category {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #12cca7;
  min-width: 200px;
  box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
  z-index: 1;
}
.dropdown-content a {
  color: #fff;
  font-weight: bold;
  text-transform: uppercase;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #289271;}

.dropdown-category:hover .dropdown-content {display: block;}

.dropdown-category:hover .dropbtn {background-color: #3e8e41;}

@media screen and (max-width: 767px) {
.mb-logo{
    display: block;
}
.lg-logo{
    display:none;
}

}
</style>



<div class="header-nav animate-dropdown">
    <div class="container">
        <div class="yamm navbar navbar-default" role="navigation">
            <div class="navbar-header">
            <div class="mb-logo">
            <div class="logo">
                <a href="index.php">
                    
                    <h2 style="font-size: 20px; color: #fff;">Online Shop Management
</h2>
            
                </a>
            </div>
        </div>
                <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="nav-bg-class">
                <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
	<div class="nav-outer">
    <div class="row">
        <div class="col-md-4 col-lg-3 col-sm-4">
            <div class="logo lg-logo">
                <a href="index.php">
                    
                    <h2 style="font-size: 20px; color:#fff;">Online Shop Management
</h2>
            
                </a>
            </div>
        </div>
        <div class="col-md-8 col-sm-8 col-lg-9 ">
            <ul class="nav navbar-nav pull-right">
                <li class="active dropdown yamm-fw">
                    <a href="index.php">Home</a>
                    
                </li>
                <li class="  yamm-fw">
                    <a href="about.php" >About</a>
                    
                </li>
                <li class="  yamm-fw">
                    <a href="contact.php" >Contact</a>
                    
                </li>
                <li class=" dropdown-category yamm-fw">
                    <a href="#" class="dropbtn">Categories</a>
                    <div class="dropdown-content">
                    <?php $sql=mysqli_query($con,"select id,categoryName  from category ");
    while($row=mysqli_fetch_array($sql))
    {
        ?>
    
    
                    <a href="category.php?cid=<?php echo $row['id'];?>"> <?php echo $row['categoryName'];?></a>
                
                <?php } ?>
                </div>
                   
                </li>






<!-- 

                  <?php $sql=mysqli_query($con,"select id,categoryName  from category ");
    while($row=mysqli_fetch_array($sql))
    {
        ?>
    
                <li class="dropdown yamm">
                    <a href="category.php?cid=<?php echo $row['id'];?>"> <?php echo $row['categoryName'];?></a>
                
                </li>
                <?php } ?> -->
    
                
            </ul><!-- /.navbar-nav -->
        </div>
    </div>
	
		<div class="clearfix"></div>				
	</div>
</div>


            </div>
        </div>
    </div>
</div>