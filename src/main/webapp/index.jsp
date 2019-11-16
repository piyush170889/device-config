<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>

<head>
<meta charset="UTF-8">
<title>Moisture Sensor</title>

<script src="js/jquery_3_4_1.min.js"></script>


<script type="text/javascript" src="bootstrap/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="bootstrap/bootstrap.min.css" />
<script type="text/javascript" src="js/homemanagement.js"></script>
<script type="text/javascript" src="js/divtoreplace.js"></script>
<link rel="stylesheet" type="text/css" href="css/first.css">
<link rel="stylesheet" type="text/css" href="css/srd.css" />
<link rel="stylesheet" type="text/css" href="css/common.css" />


</head>

<body>

	<div class="argmaindiv">

		<div class="argheader">
			<div class="argproductLogo">
				<!-- <img class='headerprlogo' /> -->
			</div>
			<!-- Copy -->



			<!-- My start -->
			<div class="argmenunavbar">
				<!-- <nav
					class="navbar navbar-expand-md navbar-dark fixed-top headbackgr">
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<ul class="navbar-nav nav-ul-style mr-auto">
						<li class="nav-item active">
							<div class="menudiv">
								<div class="menudivleft">
									<a class="menubuttons nav-link" href="#" id="menuhome">HOME</a>
								</div>
								<div class="menudivright">|</div>
							</div>
						</li>
						<li class="nav-item active">
							<div class="menudiv">
								<div class="menudivleft">
									<a class="menubuttons nav-link" href="#" id="menutrend">TREND

									</a>
								</div>
								<div class="menudivright">|</div>
							</div>
						</li>
						<li class="nav-item active">
							<div class="menudiv">
								<div class="menudivleft">
									<a class="menubuttons nav-link" href="#" id="menureports">REPORTS
									</a>
								</div>
								<div class="menudivright">|</div>
							</div>
						</li>


						<li class="nav-item active">
							<div class="menudiv">
								<div class="menudivleft">
									<a class="menubuttons nav-link" href="#" id="menulog">LOG</a>
								</div>
								<div class="menudivright">|</div>
							</div>
						</li>

						<li class="nav-item active">
							<div class="menudiv">
								<div class="menudivleft">
									<a class="menubuttons nav-link" href="#" id="menusettings">SETTINGS</a>
								</div>

							</div>
						</li>

					</ul>

				</div>
				</nav> -->

			</div>
			<div class="logoutbuttondiv">
				<%-- <a href="logout" class="logoutbuttonlabel">Logout ${sessionScope.userName}</a> --%>
				<a class="logoutbuttonlabel" href="logout"> <img class="img"
					src="img/power-off.png" alt=""></a>

			</div>
			
		</div>
		<div class="argheadeliner">
			<img class='headerfixline' src="img/line.png" />
		</div>
		<div class="argcontent">

			<div class="buttons-group">
				<div class="top-buttons btn1">
					<span>Material Status</span>
					<div class="circle-green"></div>
				</div>
				<div class="top-buttons btn2">
					<span>Temperature Lock</span>
					<div class="circle-red"></div>
				</div>
				<div class="top-buttons btn3">
					<span>Frequency Lock</span>
					<div class="circle-red"></div>
				</div>
				<div class="top-buttons btn4">
					<span>SR Number: 123456789</span>
				</div>
			</div>

			<div class="homemiddlediv">
				<div class="sidebar">
					<ul>
						<li><a href="deviceconfig-home">Home</a></li>
						<li><a href="data-tab" target="_blank">Data Tab</a></li>
						<li><a href="javascript:void(0)" onclick="loadPage('page3')">Page3</a></li>
					</ul>
				</div>
				
				<!-- Div To Replace -->
				<div id="divToReplace"></div>
				<!-- ./Div To Replace -->
				
				<script>
					var data = {};
					loadPage('deviceconfig-home', data);
				</script>
			</div>



		</div>


		<div class="argfooterliner">
			<img class='footerfixline' src="img/line.png" />
		</div>
		<div class="argfooter" style="">
			
			<div class="argfootertext ftrfix-rg">



			</div>

		</div>

	</div>
	<script src="js/device-config.js" type="text/javascript"></script>
	<!-- <img class="linebottom" src="images/line.png" alt="bottomLine" /> -->

</body>

</html>