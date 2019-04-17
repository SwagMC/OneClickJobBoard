<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype HTML>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"
	integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r"
	crossorigin="anonymous">
</head>

<body>
	<div class="container">

		<div class="alert alert-info" role="alert">
			<h4 class="text-center">
				<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
				User Login
			</h4>
		</div>

		<div class="row">

			<form:form commandName="user" class="form-horizontal">

				<div class="form-group">
					<label for="username" class="col-sm-4 control-label">Username:</label>
					<div class="col-sm-8">
						<form:input type="text" class="form-control" id="username"
							path="username" placeholder="Username" required="required" />
					</div>
				</div>

				<div class="form-group">
					<label for="password" class="col-sm-4 control-label">Password:</label>
					<div class="col-sm-8">
						<form:input type="text" class="form-control" id="password"
							path="password" placeholder="Password" required="required" />
					</div>
				</div>

				<div class="form-group">
					<label for="type" class="col-sm-4 control-label">Type: </label>
					<div class="col-sm-8">
						<form:select path="type" id="type" class="form-control">
							<form:option value="applicant">Applicant</form:option>
							<form:option value="Company">Company</form:option>
						</form:select>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-8">
						<input type="submit" class="btn btn-success"
							value="Login" />
							
						<a href="user/register.htm">Click Here to Register</a>
							
					</div>
				</div>
				
			</form:form>
		</div>
	</div>

	<!-- Latest compiled and minified JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
		integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
		crossorigin="anonymous"></script>
</body>
</html>