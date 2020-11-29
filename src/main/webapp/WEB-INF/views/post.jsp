<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- <!DOCTYPE html>
<html>
<head>
  <script src="https://cdn.tiny.cloud/1/s0sdrgn4gfs4jcz723j3wp5ww5p2d3qijj00r3ejftd1fd9v/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
</head>
<body>
<form action="/user/savepost" method="post">
<h1>Hii ${username}</h1>
 Enter Title::<h2><input type="text" name="post_title"/></h2>
  <textarea name="post_content">
    Welcome to Blogger-Clone
  </textarea>
  <input type="submit" value="post"/>
  </form>
  <script>
    tinymce.init({
      selector: 'textarea',
      plugins: 'a11ychecker advcode casechange formatpainter linkchecker autolink lists checklist media mediaembed pageembed permanentpen powerpaste table advtable tinycomments tinymcespellchecker',
      toolbar: 'a11ycheck addcomment showcomments casechange checklist code formatpainter pageembed permanentpen table',
      toolbar_mode: 'floating',
      tinycomments_mode: 'embedded',
      tinycomments_author: 'Author name'
    });
  </script>
  
</body>
</html>
 -->
<!DOCTYPE html>
<html>
<head>
<title>post</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://cdn.tiny.cloud/1/s0sdrgn4gfs4jcz723j3wp5ww5p2d3qijj00r3ejftd1fd9v/tinymce/5/tinymce.min.js"
	referrerpolicy="origin"></script>
<script>
// Disable form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Get the forms we want to add validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();

</script>
<script>
    tinymce.init({
      rows:'10',
      cols:'75',
      selector: 'textarea',
      plugins: 'a11ychecker advcode casechange formatpainter linkchecker autolink lists checklist media mediaembed pageembed permanentpen powerpaste table advtable tinycomments tinymcespellchecker',
      toolbar: 'a11ycheck addcomment showcomments casechange checklist code formatpainter pageembed permanentpen table',
      toolbar_mode: 'floating',
      tinycomments_mode: 'embedded',
      tinycomments_author: 'Author name'
    });
  </script>
<style type="text/css">
* {
	/*font-family: "Times New Roman", Times, serif;*/
	font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}

body {
	border: 1px solid yellow;
	position: relative;
	background-color: #E3E3E3;
	height: auto;
}

#footer-container {
	border: 1px solid black;
	padding-top: 10px;
	margin-top: 5px;
}

#main-post-container {
	padding-right: 20px;
	padding-left: 20px;
	padding-top: 5px;
	padding-bottom: 5px;
	/*margin-bottom: 10px;*/
	border: 1px solid black;
	background-color: #F6F6F8;
	width:100%;
}

#center-container {
	margin-top: 10px;
	height: auto;
}
</style>

</head>
<body class="container-fluid">
	<!-- main container-->
	<!-- creating navigation bar-->
	<nav
		class="navbar navbar-expand-md bg-light navbar-light border border-primary"
		id="nav-bar">
		<div class="navbar-header">
			<a herf="/" class="navbar-brand"><b style="color: #A9A9A9;">Blogger-Clone</b></a>
		</div>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavBar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavBar">
			<ul class="navbar-nav">
				<li class="nav-item"><a href="/" class="nav-link"><b>Home</b></a>
				</li>
				<li class="nav-item"><a href="/showsignup" class="nav-link"><b>login/signup</b></a>
				</li>
				<li class="nav-item"><a href="/showpostpage" class="nav-link"><b>Post</b></a>
				</li>
				<li class="nav-item"><a href="#" class="nav-link"><b>About
							Us</b></a></li>
				<li class="nav-item"><a href="/showcontactus" class="nav-link"><b>Contact
							Us</b></a></li>
				<li class="nav-item">
					<form class="navbar-form navbar-left">
						<div class="input-group">
							<input type="email" class="form-control" placeholder="Search">
							<div class="input-group-append">
								<button class="btn btn-primary" type="submit">Go</button>
							</div>
						</div>
					</form>
				</li>
			</ul>
		</div>
	</nav>
	<!-- post container area-->
	<!-- Center Container Area-->
	<div class="row" id="center-container">
		<!-- Left Side Column-->
		<div class="col-sm-2"></div>
		<!-- Center Container Area-->
		<div class="col-sm-8">
			<h3 class="text-primary">Post</h3>
			<!-- Main Blogs Showing Area-->
			<div class="row" id="main-post-container">

				<form action="/user/savepost" class="needs-validation" method="post" enctype="multipart/form-data">
					<div class="form-group">
						<label class="text-primary font-weight-bold" for="title">Enter
							Title</label> <input type="text" class="form-control" id="title"
							placeholder="Enter Title Here..." name="post_title" required />
						<div class="valid-feedback">Valid Title</div>
						<div class="invalid-feedback">This field can't be empty</div>
					</div>
					<div class="form-group">
						<label class="text-primary font-weight-bold" for="content">Type
							Post</label>
						<textarea class="form-control" 
							id="post-textarea" name="post_content">Start Writing Here...</textarea>
						<div class="valid-feedback">Valid Post</div>
						<div class="invalid-feedback">This field can't be empty</div>
					</div>

					<div class="form-group">
						<label class="text-primary font-weight-bold" for="tags">Enter
							comma seprated tags</label> <input type="text" class="form-control"
							id="tags" placeholder="Enter Title Here..." required />
						<div class="valid-feedback">Valid Tags</div>
						<div class="invalid-feedback">This field can't be empty</div>
					</div>
					<div class="form-group">
						<label class="text-primary font-weight-bold" for="image">Upload
							Cover Image</label> <input type="file" class="form-control-file border"
							id="image" placeholder="Select a file" name="img"/>
						<div class="valid-feedback">Valid image</div>
						<div class="invalid-feedback">This field can't be empty</div>
					</div>
					<div class="form-group">
						<button class="btn btn-outline-primary btn-block" type="submit"
							id="post-button">Post...</button>
					</div>
				</form>
			</div>
		</div>
		<!-- Right Side Column -->
		<div class="col-sm-2">
			<!-- Tag Button Portion -->
			<button type="button" class="btn btn-outline-primary">primary</button>
			<button type="button" class="btn btn-outline-secondary">secondary</button>
			<button type="button" class="btn btn-outline-success">sucess</button>
			<button type="button" class="btn btn-outline-info">info</button>
			<button type="button" class="btn btn-outline-warning">warning</button>
			<button type="button" class="btn btn-outline-primary">primary</button>
			<button type="button" class="btn btn-outline-secondary">secondary</button>
			<button type="button" class="btn btn-outline-success">sucess</button>
			<button type="button" class="btn btn-outline-info">info</button>
			<button type="button" class="btn btn-outline-warning">warning</button>
			<button type="button" class="btn btn-outline-primary">primary</button>
			<button type="button" class="btn btn-outline-secondary">secondary</button>
			<button type="button" class="btn btn-outline-success">sucess</button>
			<button type="button" class="btn btn-outline-info">info</button>
			<button type="button" class="btn btn-outline-warning">warning</button>
			<button type="button" class="btn btn-outline-primary">primary</button>
			<button type="button" class="btn btn-outline-secondary">secondary</button>
			<button type="button" class="btn btn-outline-success">sucess</button>
			<button type="button" class="btn btn-outline-info">info</button>
		</div>
	</div>


	<!-- Footer Area-->
	<footer class="page-footer font-small">
		<div class="row" id="footer-container">
			<div class="col-md-4">
				<span class="text-primary">Subscribe to our newsletter</span><br>
				<!-- NewsLetter button-->
				<div class="input-group">
					<input type="email" class="form-control"
						placeholder="abc@gmail.com">
					<div class="input-group-append">
						<button class="btn btn-primary" type="submit">Go</button>
					</div>
				</div>
			</div>


			<div class="col-md-2">
				<ul style="list-style-type: none; font-size: 16px;">
					<li><a href="#">About-Us</a></li>
					<li><a href="#">Contact</a></li>
					<li><a href="#">Term & Condition</a></li>
				</ul>
			</div>
			<div class="col-md-2">
				<ul style="list-style-type: none;">
					<li><i class="fa fa-facebook-square text-primary"
						style="font-size: 24px; color: red;"></i><a
						href="https://www.facebook.com">Facebook</a></li>
					<li><i class="fa fa-twitter-square text-primary"
						style="font-size: 24px; color: red;"></i><a
						href="https://www.twitter.com">Twitter</a></li>
					<li><i class="fa fa-instagram  text-primary"
						style="font-size: 24px; color: red;"></i><a
						href="https://www/instagram.com">Instagram</a></li>
				</ul>
				<!--<ul style="list-style-type: none;">
              <li><a href="#">Facebook</a></li>
              <li><a href="#">Twitter</a></li>
              <li><a href="#">Instagram</a></li>
            </ul>
          -->
			</div>
			<div class="col-md-2">
				<div class="footer-copyright text-center">
					<span>&#169;</span> 2020 Copyright: <a href="index.html">Blogger-Clone.com</a>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</footer>
</body>
</html>