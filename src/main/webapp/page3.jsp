<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Page 3</title>

<!-- Required JS -->
<script src="js/jquery_3_4_1.min.js"></script>
<script type="text/javascript" src="bootstrap/bootstrap.min.js"></script>

<!-- Custom JS -->
<script type="text/javascript" src="js/page3.js"></script>

<link rel="stylesheet" type="text/css"
	href="bootstrap/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/srd.css" />
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/page3.css" />

</head>
<body>

	<div
		style="width: 78%; margin: 0; padding: 0; float: left; border: 1px solid #cecece; border-radius: 5px; height: 100%;">

		<div
			style="width: 38%; height: 92%; padding: 2%; margin: 0; float: left;">

			<!-- Material Selection Section -->
			<div
				style="width: 100%; margin: 0; padding: 0; height: 10%; float: left;">
				<div style="width: 30%; float: left;">
					<label>Material</label>
				</div>
				<div style="width: 60%; height: 10%; float: left;">
					<select
						style="width: 100%; border-bottom: 1px solid #000; border-right: none; border-left: none; border-top: none;"
						onchange="populateFreqData()" id="material">

						<option value="select">Select</option>
						<s:iterator value="tableNames">
							<option>
								<s:property />
							</option>
						</s:iterator>

					</select>
				</div>
			</div>

			<!-- Graph Section -->
			<div
				style="width: 100%; margin: 0 0 2% 0; padding: 0; height: 45%; float: left; border: 1px solid #cecece; border-radius: 5px;">

			</div>

			<!-- Table Section -->
			<div
				style="width: 100%; margin: 0; padding: 0; height: 30%; float: left;">
				<table class="tbl">
					<thead>
						<tr>
							<th></th>
							<th>a1</th>
							<th>a2</th>
							<th>a3</th>
							<th>a5</th>
							<th>a8</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Y0</td>
							<td><input type="text" id="y0a1" value="0.0" /></td>
							<td><input type="text" id="y0a2" value="0.0" /></td>
							<td><input type="text" id="y0a3" value="0.0" /></td>
							<td><input type="text" id="y0a5" value="0.0" /></td>
							<td><input type="text" id="y0a8" value="0.0" /></td>
							<td><input type="checkbox" /></td>
						</tr>
						<tr>
							<td>Y1</td>
							<td><input type="text" id="y1a1" value="0.0" /></td>
							<td><input type="text" id="y1a2" value="0.0" /></td>
							<td><input type="text" id="y1a3" value="0.0" /></td>
							<td><input type="text" id="y1a5" value="0.0" /></td>
							<td><input type="text" id="y1a8" value="0.0" /></td>
							<td><input type="checkbox" /></td>
						</tr>
						<tr>
							<td>Y2</td>
							<td><input type="text" id="y2a1" value="0.0" /></td>
							<td><input type="text" id="y2a2" value="0.0" /></td>
							<td><input type="text" id="y2a3" value="0.0" /></td>
							<td><input type="text" id="y2a5" value="0.0" /></td>
							<td><input type="text" id="y2a8" value="0.0" /></td>
							<td><input type="checkbox" /></td>
						</tr>
						<tr>
							<td>Y3</td>
							<td><input type="text" id="y3a1" value="0.0" /></td>
							<td><input type="text" id="y3a2" value="0.0" /></td>
							<td><input type="text" id="y3a3" value="0.0" /></td>
							<td><input type="text" id="y3a5" value="0.0" /></td>
							<td><input type="text" id="y3a8" value="0.0" /></td>
							<td><input type="checkbox" /></td>
						</tr>
						<tr class="no-bottom-border">
							<td>Y4</td>
							<td><input type="text" id="y4a1" value="0.0" /></td>
							<td><input type="text" id="y4a2" value="0.0" /></td>
							<td><input type="text" id="y4a3" value="0.0" /></td>
							<td><input type="text" id="y4a5" value="0.0" /></td>
							<td><input type="text" id="y4a8" value="0.0" /></td>
							<td><input type="checkbox" /></td>
						</tr>
					</tbody>
				</table>
			</div>

		</div>

		<div class="right-border"></div>

		<!-- Right Section -->
		<div style="width: 58%; padding: 2%; margin: 0; float: left;">

			<!-- Upper Header Data -->
			<div class="init-div right-upper-section">

				<div style="width: 60%; float: right;">

					<div style="width: 19%; margin: 0; padding: 0; float: left;">
						<p>Ab</p>
						<p>1</p>
					</div>

					<div style="width: 19%; margin: 0; padding: 0; float: left;">
						<p>DPhib</p>
						<p>0</p>
					</div>

					<div style="width: 58%; margin: 0; padding: 0; float: left;">
						<table class="tbl rt_tbl">
							<tbody>
								<tr>
									<td class="no-border">a0</td>
									<td>1</td>
									<td>1</td>
									<td>1</td>
									<td>1</td>
									<td class="no-border-right">1</td>
								</tr>
								<tr class="no-bottom-border">
									<td class="no-border">a6</td>
									<td>1</td>
									<td>1</td>
									<td>1</td>
									<td>1</td>
									<td class="no-border-right">1</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- ./Upper Header Data -->

			<!-- Mid Right Section Data -->
			<div class="init-div right-upper-section rounded-border">
				<table class="rt_mid_tbl">
					<thead>
						<tr>
							<th></th>
							<th>LM</th>
							<th>A</th>
							<th>DPhi</th>
							<th>Temp</th>
							<th>Ac</th>
							<th>DPhic</th>
							<th>Y0</th>
							<th>Y1</th>
							<th>Y2</th>
							<th>Y3</th>
							<th>Y4</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" /></td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td class="no-border-right">0.0</td>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td class="no-border-right">0.0</td>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td class="no-border-right">0.0</td>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td class="no-border-right">0.0</td>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td class="no-border-right">0.0</td>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td class="no-border-right">0.0</td>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td class="no-border-right">0.0</td>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td class="no-border-right">0.0</td>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td class="no-border-right">0.0</td>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td>0.0</td>
							<td class="no-border-right">0.0</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- Mid Right Section Data -->

			<!-- Lower Upper Section -->
			<div style="height: 10%; width: 100%; float: left;">

				<div style="width: 50%; float: left;">
					<div
						style="width: 25%; height: 48%; float: left; text-align: center;">
						d</div>
					<div
						style="width: 75%; height: 48%; float: left; text-align: center;">
						<input type="text" style="width: 90%" />
					</div>
					<div
						style="width: 25%; height: 48%; float: left; text-align: center;">
						rho</div>
					<div
						style="width: 75%; height: 48%; float: left; text-align: center;">
						<input type="text" style="width: 90%" />
					</div>
				</div>

				<div style="width: 50%; float: left;">
					<div style="width: 100%; float: right; float: left;">
						<input type="submit" value="Auto Calculate"
							style="margin: 5% 5% 0 0; float: right; border: 1px solid #cecece; background: #fff; border-radius: 5px;" />
					</div>
				</div>

			</div>
			<!-- ./Lower Upper Section -->


			<!-- Lower Bottom Section -->
			<div style="height: 5%; width: 100%; float: left;">
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					d</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					rho</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					Ch1Alpha0</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					Ch1s</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" />
				</div>
			</div>

			<div style="height: 5%; width: 100%; float: left;">
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					a1</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					a2</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					Ch1Beta0</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					Ch1n</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" />
				</div>
			</div>

			<div style="height: 5%; width: 100%; float: left;">
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					a3</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					a8</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					Ch2Alpha0</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					Ch2s</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" />
				</div>
			</div>

			<div style="height: 5%; width: 100%; float: left;">
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					a0</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					a5</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					Ch2Beta0</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					Ch2n</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" />
				</div>
			</div>

			<div style="height: 5%; width: 100%; float: left;">
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					a6</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" />
				</div>
			</div>
			<!-- ./Lower Bottom Section -->

		</div>
		<!-- ./Right Section -->

	</div>

	<!-- Scripts -->
	<script type="text/javascript">
		function populateFreqData() {

			var materialSelected = $('#material').val();
			console.log('Freq Data = ' + materialSelected);

			if (materialSelected != 'select') {

				var data = {
					"tableName" : materialSelected
				}

				$.ajax({
					type : "POST",
					url : 'getFreqData',
					data : data,
					success : function(response) {
						console.log('response = ' + response);
						setFreq(response.y0a1, response.y0a2, response.y0a3,
								response.y0a5, response.y0a8, response.y1a1,
								response.y1a2, response.y1a3, response.y1a5,
								response.y1a8, response.y2a1, response.y2a2,
								response.y2a3, response.y2a5, response.y2a8,
								response.y3a1, response.y3a2, response.y3a3,
								response.y3a5, response.y3a8, response.y4a1,
								response.y4a2, response.y4a3, response.y4a5,
								response.y4a8)
					},
					error : function(xhr, status, error) {

					}
				});
			} else {
				resetFreqData();
				alert('Please Select Appropriate Material From Dropdown');
			}
		}

		function resetFreqData() {

			setFreq('0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0',
					'0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0',
					'0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0',
					'0.0');
		}

		function setFreq(y0a1, y0a2, y0a3, y0a5, y0a8, y1a1, y1a2, y1a3, y1a5,
				y1a8, y2a1, y2a2, y2a3, y2a5, y2a8, y3a1, y3a2, y3a3, y3a5,
				y3a8, y4a1, y4a2, y4a3, y4a5, y4a8) {

			$('#y0a1').val(y0a1);
			$('#y0a2').val(y0a2);
			$('#y0a3').val(y0a3);
			$('#y0a5').val(y0a5);
			$('#y0a8').val(y0a8);

			$('#y1a1').val(y1a1);
			$('#y1a2').val(y1a2);
			$('#y1a3').val(y1a3);
			$('#y1a5').val(y1a5);
			$('#y1a8').val(y1a8);

			$('#y2a1').val(y2a1);
			$('#y2a2').val(y2a2);
			$('#y2a3').val(y2a3);
			$('#y2a5').val(y2a5);
			$('#y2a8').val(y2a8);

			$('#y3a1').val(y3a1);
			$('#y3a2').val(y3a2);
			$('#y3a3').val(y3a3);
			$('#y3a5').val(y3a5);
			$('#y3a8').val(y3a8);

			$('#y4a1').val(y4a1);
			$('#y4a2').val(y4a2);
			$('#y4a3').val(y4a3);
			$('#y4a5').val(y4a5);
			$('#y4a8').val(y4a8);
		}
	</script>
</body>
</html>