<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="fr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>edit-post</title>
<script
	src="https://cdn.tiny.cloud/1/s0sdrgn4gfs4jcz723j3wp5ww5p2d3qijj00r3ejftd1fd9v/tinymce/5/tinymce.min.js"
	referrerpolicy="origin"></script>
</head>
<body>
	<fr:form action="/post/updatepost" method="post" modelAttribute="post" enctype="multipart/form-data">
		<pre>
			title::<fr:input path="title" />
			image::<img src="/post/getimage?id=${post.id}" style="height:200px;width:200px;" />
			change image::<input type="file" name="file"/>
			content::<fr:textarea path="content"/>
			
				<input type="submit" value="update" />
		</pre>
		<script>
			tinymce
					.init({
						selector : 'textarea',
						plugins : 'a11ychecker advcode casechange formatpainter linkchecker autolink lists checklist media mediaembed pageembed permanentpen powerpaste table advtable tinycomments tinymcespellchecker',
						toolbar : 'a11ycheck addcomment showcomments casechange checklist code formatpainter pageembed permanentpen table',
						toolbar_mode : 'floating',
						tinycomments_mode : 'embedded',
						tinycomments_author : 'Author name'
					});
		</script>
	</fr:form>
</body>
</html>