<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en" ng-app="med">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="https://pingendo.github.io/templates/blank/theme.css"
	type="text/css">
</head>

<body>
	<div class="py-5">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<table class="table">
						<thead>
							<tr>
								<th>#</th>
								<th>First Name</th>
								<th>Last Name</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Mark</td>
								<td>Otto</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Jacob</td>
								<td>Thornton</td>
							</tr>
							<tr>
								<td>3</td>
								<td>Larry</td>
								<td>the Bird</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<div ng-controller="indexController">
		<select ng-model="selection" ng-options="item for item in items">
		</select>
		<code>selection={{selection}}</code>
		<hr />
		<div class="animate-switch-container" ng-switch on="selection">
			<div class="animate-switch" ng-switch-when="settings|options"
				ng-switch-when-separator="|">Settings Div</div>
			<div class="animate-switch" ng-switch-when="home">Home Span</div>
			<div class="animate-switch" ng-switch-default>default</div>
		</div>
	</div>
	<!--<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<label>Name:</label> 
				<input type="text" ng-model="yourName" placeholder="Enter a name here">
			</div>
			
			<hr>
			
			<div class="col-md-12">
				<h1>Hello {{yourName}}!</h1>
			</div>
		</div>
	</div>-->
	<script src="resources/js/angular.js"></script>
	<script src="resources/js/app.js"></script>

</body>


</html>