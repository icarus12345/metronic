<html lang="en">
	<head>
		<meta charset="utf-8"/>
		<title>loading...</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta content="width=device-width, initial-scale=1, maximum-scale=1.0" name="viewport"/>
		<meta http-equiv="Content-type" content="text/html; charset=utf-8">
		[{if $url}]
		<meta http-equiv="refresh" content="2;URL='[{$url}]'" />
		[{/if}]
		<style type="text/css">
			* {
			  -webkit-box-sizing: border-box;
			     -moz-box-sizing: border-box;
			          box-sizing: border-box;
			}
			*:before,
			*:after {
			  -webkit-box-sizing: border-box;
			     -moz-box-sizing: border-box;
			          box-sizing: border-box;
			}
			body {
			  	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
			  	font-size: 12px;
			  	line-height: 1.5;
			  	color: #111;
			  	background-color: #FFF;
			  	
			}
			.loading{
				height: 60px;width:200px;
				text-align: center;
				position: fixed;
				top: 50%;left: 50%;
				margin: -30px 0 0 -100px;
			}
			.loading .spinner{margin: auto;}
			.spinner {
			  border: 2px solid rgba(0, 0, 0, 0.2);
			  font-size: 40px;
			  width: 1em;
			  height: 1em;
			  border-radius: .5em;
			  -moz-box-sizing: border-box;
			  -webkit-box-sizing: border-box;
			  box-sizing: border-box;
			  -webkit-animation: spin 1s linear infinite;
			  -moz-animation: spin 1s linear infinite;
			  animation: spin 1s linear infinite;
			  border-top-color: #0dc5c1;
			}
			@-webkit-keyframes spin {
			  to {
			    -moz-transform: rotate(360deg);
			    -ms-transform: rotate(360deg);
			    -webkit-transform: rotate(360deg);
			    transform: rotate(360deg);
			  }
			}
			@-moz-keyframes spin {
			  to {
			    -moz-transform: rotate(360deg);
			    -ms-transform: rotate(360deg);
			    -webkit-transform: rotate(360deg);
			    transform: rotate(360deg);
			  }
			}
			@keyframes spin {
			  to {
			    -moz-transform: rotate(360deg);
			    -ms-transform: rotate(360deg);
			    -webkit-transform: rotate(360deg);
			    transform: rotate(360deg);
			  }
			}
		</style>
	</head>
	<body>
		<div class="loading">
            <div class="spinner"></div>
            <div>loading 。。。</div>
        </div>
	</body>
</html>