<?php 
include("path.php");
include(ROOT_PATH . "/main/controllers/topics.php");

$books = array();
$booksTitle = 'Recent Posts';

if (isset($_GET['t_id'])) {
  $books = getPostsByTopicId($_GET['t_id']);
  $booksTitle = "You searched for posts under '" . $_GET['name'] . "'";
} else if (isset($_POST['search-term'])) {
  $booksTitle = "You searched for '" . $_POST['search-term'] . "'";
  $books = searchPosts($_POST['search-term']);
} else {
  $books = getPublishedPosts();
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="icon" type="image/png" href="public/images/salad.png"/>
   <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
    integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Candal|Lora" rel="stylesheet">

<link href="public/css/bootstrap.min.css" rel="stylesheet">
<!-- Fonts -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Righteous" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="public/css/bookinfos.css" rel="stylesheet">

  <!-- Custom Styling -->
  <link rel="stylesheet" href="public/css/style.css">

  <title>BookINFOS - Book Sharing Application</title>
</head>

<body>

  <?php include(ROOT_PATH . "/main/includes/header.php"); ?>
  <?php include(ROOT_PATH . "/main/includes/messages.php"); ?>

  <section class="featured-posts">
	<div class="section-title">
		<h2><span></span></h2>
	</div>
	<div class="card-columns listfeaturedtag">
  <?php foreach ($books as $book): ?>

		<!-- begin post -->
		<div class="card">
			<div class="row">
				<div class="col-md-5 wrapthumbnail">
					<a href="bookpage.php?id=<?php echo $book['id']; ?>">
          <div class="thumbnail" style="background-image:url(<?php echo BASE_URL . '/public/images/' . $book['image']; ?>);">
						</div>
					</a>
				</div>
				<div class="col-md-7">
					<div class="card-block">
						<h2 class="card-title"><a href="bookpage.php?id=<?php echo $book['id']; ?>"><?php echo $book['title']; ?></a></h2>
						<h4 class="card-text"><?php echo html_entity_decode(substr($book['body'], 0, 150) . '...'); ?></h4>
						<div class="metafooter">
							<div class="wrapfooter">
								<span class="meta-footer-thumb">
								<a><img class="author-thumb" src="public/images/profile.png" alt="Rithesh Kumar Ghosh"></a>
								</span>
								<span class="author-meta">
								<span class="post-name"><a><?php echo $book['username']; ?></a></span><br/>
								<span class="post-date"><?php echo date('F j, Y', strtotime($book['created_at'])); ?></span><span class="dot"></span><span></span>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
    <?php endforeach; ?>
		<!-- end post -->
    </div>
	</section>


  <?php include(ROOT_PATH . "/main/includes/footer.php"); ?>


  <!-- JQuery -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <!-- JavaScript Bundle with Popper -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  <!-- Custom Script -->
  <script src="public/js/scripts.js"></script>

</body>

</html>