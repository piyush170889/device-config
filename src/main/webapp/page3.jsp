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
							<td><input type="radio" onclick="updateUploadValues('y0')"
								name="elementToUpload" /></td>
						</tr>
						<tr>
							<td>Y1</td>
							<td><input type="text" id="y1a1" value="0.0" /></td>
							<td><input type="text" id="y1a2" value="0.0" /></td>
							<td><input type="text" id="y1a3" value="0.0" /></td>
							<td><input type="text" id="y1a5" value="0.0" /></td>
							<td><input type="text" id="y1a8" value="0.0" /></td>
							<td><input type="radio" onclick="updateUploadValues('y1')"
								name="elementToUpload" /></td>
						</tr>
						<tr>
							<td>Y2</td>
							<td><input type="text" id="y2a1" value="0.0" /></td>
							<td><input type="text" id="y2a2" value="0.0" /></td>
							<td><input type="text" id="y2a3" value="0.0" /></td>
							<td><input type="text" id="y2a5" value="0.0" /></td>
							<td><input type="text" id="y2a8" value="0.0" /></td>
							<td><input type="radio" onclick="updateUploadValues('y2')"
								name="elementToUpload" /></td>
						</tr>
						<tr>
							<td>Y3</td>
							<td><input type="text" id="y3a1" value="0.0" /></td>
							<td><input type="text" id="y3a2" value="0.0" /></td>
							<td><input type="text" id="y3a3" value="0.0" /></td>
							<td><input type="text" id="y3a5" value="0.0" /></td>
							<td><input type="text" id="y3a8" value="0.0" /></td>
							<td><input type="radio" onclick="updateUploadValues('y3')"
								name="elementToUpload" /></td>
						</tr>
						<tr class="no-bottom-border">
							<td>Y4</td>
							<td><input type="text" id="y4a1" value="0.0" /></td>
							<td><input type="text" id="y4a2" value="0.0" /></td>
							<td><input type="text" id="y4a3" value="0.0" /></td>
							<td><input type="text" id="y4a5" value="0.0" /></td>
							<td><input type="text" id="y4a8" value="0.0" /></td>
							<td><input type="radio" onclick="updateUploadValues('y4')"
								name="elementToUpload" /></td>
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

				<div style="width: 70%; float: right;">

					<div class="right-upper-section-1">
						<p>Ab</p>
						<p>
							<input type="text" id="Ab" value="1" />
						</p>
					</div>

					<div class="right-upper-section-1">
						<p>DPhib</p>
						<p>
							<input type="text" id="DPhib" value="0" />
						</p>
					</div>

					<div style="width: 58%; margin: 0; padding: 0; float: left;">
						<table class="tbl rt_tbl">
							<tbody>
								<tr>
									<td class="no-border">a0</td>
									<td><input type="text" id="LMy0a0" value="1" /></td>
									<td><input type="text" id="LMy1a0" value="1" /></td>
									<td><input type="text" id="LMy2a0" value="1" /></td>
									<td><input type="text" id="LMy3a0" value="1" /></td>
									<td class="no-border-right"><input type="text" id="LMy4a0"
										value="1" /></td>
								</tr>
								<tr class="no-bottom-border">
									<td class="no-border">a6</td>
									<td><input type="text" id="LMy0a6" value="0" /></td>
									<td><input type="text" id="LMy1a6" value="0" /></td>
									<td><input type="text" id="LMy2a6" value="0" /></td>
									<td><input type="text" id="LMy3a6" value="0" /></td>
									<td class="no-border-right"><input type="text" id="LMy4a6"
										value="0" /></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- ./Upper Header Data -->

			<!-- Mid Right Section Data -->
			<div class="init-div right-upper-section rounded-border">
				<form id="rt_mid_tbl_submit">
					<table class="rt_mid_tbl" id="liset_tbl">
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
								<th><img src="img/plus.png" onclick="addRow()" /></th>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
				</form>
			</div>
			<!-- Mid Right Section Data -->

			<!-- Lower Upper Section -->
			<div style="height: 12%; width: 100%; float: left;">

				<div style="width: 50%; float: left;">
					<div
						style="width: 25%; height: 48%; float: left; text-align: center;">
						d</div>
					<div
						style="width: 75%; height: 48%; float: left; text-align: center;">
						<input type="text" style="width: 30%" id="rb_d_1" value="0.0" />
					</div>
					<div
						style="width: 25%; height: 48%; float: left; text-align: center;">
						rho</div>
					<div
						style="width: 75%; height: 48%; float: left; text-align: center;">
						<input type="text" style="width: 30%" id="rb_rho_1" value="0.0" />
					</div>
				</div>

				<div style="width: 50%; float: left;">
					<div style="width: 100%; float: right; float: left;">
						<input type="submit" onclick="autoCalculate()"
							value="Auto Calculate"
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
						value="0.0" id="rb_d" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					rho</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" id="rb_rho" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					Ch1Alpha0</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" id="rb_ch1Alpha" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					Ch1s</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" id="rb_ch1s" />
				</div>
			</div>

			<div style="height: 5%; width: 100%; float: left;">
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					a1</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" id="rb_a1" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					a2</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" id="rb_a2" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					Ch1Beta0</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" id="rb_ch1Beta" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					Ch1n</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" id="rb_ch1n" />
				</div>
			</div>

			<div style="height: 5%; width: 100%; float: left;">
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					a3</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" id="rb_a3" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					a8</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" id="rb_a8" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					Ch2Alpha0</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" id="rb_ch2Alpha" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					Ch2s</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" id="rb_ch2s" />
				</div>
			</div>

			<div style="height: 5%; width: 100%; float: left;">
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					a0</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" id="rb_a0" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					a5</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" id="rb_a5" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					Ch2Beta0</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" id="rb_ch2Beta" />
				</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					Ch2n</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" id="rb_ch2n" />
				</div>
			</div>

			<div style="height: 5%; width: 100%; float: left;">
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					a6</div>
				<div
					style="width: 12%; height: 48%; float: left; text-align: center;">
					<input type="text" style="width: 90%; text-align: center;"
						value="0.0" id="rb_a6" />
				</div>
			</div>


			<div style="width: 50%; float: right;">
				<div style="width: 100%; float: right; float: left;">
					<input type="submit" onclick="uploadValues()" value="Upload"
						style="margin: 5% 5% 0 0; float: right; border: 1px solid #cecece; background: #fff; border-radius: 5px;" />
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

		function deleteRow(id) {

			// Find and remove selected table rows
			var idToDelete = '#' + id;
			$(idToDelete).remove();
		}

		function addRow() {

			var idToAllocate = ($('#liset_tbl tr').length ? $('#liset_tbl tr').length
					: 0) + 1;

			var ac = 0.0 + parseFloat($('#Ab').val());

			//TODO: Calculate Proper `DPhic`
			var dphic = (0.0 + parseFloat($('#DPhib').val())) % 1;

			var y0 = calculateY0(ac);

			var y1 = calculateY1(dphic);

			var y2 = calculateY2(ac, dphic);

			//TODO: Calculate y3
			var y3 = calculateY3();

			var y4 = calculateY4(ac, dphic);

			console.log('idToAllocate = ' + idToAllocate + ', ac = ' + ac
					+ ', dphic = ' + dphic + ', y0 = ' + y0 + ', y1 = ' + y1
					+ ', y2 = ' + y2 + ', y3 = ' + y3 + ', y4 = ' + y4);

			var markup = createMarkUpToAppendToTable(idToAllocate, ac, dphic,
					y0, y1, y2, y3, y4);

			console.log('markup = ' + markup);

			$("#liset_tbl tbody").append(markup);

		}

		function createMarkUpToAppendToTable(idToAllocate, ac, dphic, y0, y1,
				y2, y3, y4) {
			var markup = "<tr id='" + idToAllocate + "'>"
					+ getTableRowMarkUp(idToAllocate, 0.0, 0.0, 0.0, 0.0, ac,
							dphic, y0, y1, y2, y3, y4) + "</tr>";

			return markup;
		}

		function getTableRowMarkUp(idToAllocate, lm, a, dphi, temp, ac, dphic,
				y0, y1, y2, y3, y4) {

			return "<td><input type='checkbox' checked /></td><td><input type='number' name='lm[]' value='" + lm + "' class='lmcls' /></td><td><input type='number' name='a[]' class='acls' value='"
					+ a
					+ "' onkeyup='updateRowValue("
					+ idToAllocate
					+ ")' /></td><td><input type='number' name='dphi[]' class='dphicls' value='"
					+ dphi
					+ "' onkeyup='updateRowValue("
					+ idToAllocate
					+ ")' /></td><td><input type='number' name='temp[]' value='"+temp+"' class='tempcls' /></td><td class='accls'>"
					+ ac
					+ "</td><td class='dphiccls'>"
					+ dphic
					+ "</td><td>"
					+ "<input type='number' readonly name=y0[] value='" + y0 + "' class='y0cls' />"
					+ "</td><td>"
					+ "<input type='number' readonly name=y1[] value='" + y1 + "' class='y1cls' />"
					+ "</td><td>"
					+ "<input type='number' readonly name=y2[] value='" + y2 + "' class='y2cls' />"
					+ "</td><td>"
					+ "<input type='number' readonly name=y3[] value='" + y3 + "' class='y3cls' />"
					+ "</td><td class='y4cls'>"
					+ "<input type='number' readonly name=y4[] value='" + y4 + "' class='y4cls' />"
					+ "</td><td class='no-border-right'><img src='img/garbage.png' onclick=\"deleteRow('"
					+ idToAllocate + "')\" /></td>";
		}

		function updateRowValue(idToAllocate) {

			console.log('table ID = ' + idToAllocate);
			var tblRowId = '#' + idToAllocate;

			var tblRow = $(tblRowId);
			var a = tblRow.find('.acls').val();
			var dphi = tblRow.find('.dphicls').val();

			console.log('a = ' + a + ', dphi = ' + dphi);

			var ac = parseFloat(a) + parseFloat($('#Ab').val());

			//TODO: Calculate Proper `DPhic`
			var dphic = (dphi + parseFloat($('#DPhib').val())) % 1;

			var y0 = calculateY0(ac);

			var y1 = calculateY1(dphic);

			var y2 = calculateY2(ac, dphic);

			//TODO: Calculate y3
			var y3 = calculateY3();

			var y4 = calculateY4(ac, dphic);

			var lm = tblRow.find('.lmcls').val();

			var temp = tblRow.find('.tempcls').val();

			console.log('idToAllocate = ' + idToAllocate + ', lm = ' + lm
					+ ', temp = ' + temp + ', ac = ' + ac + ', dphic = '
					+ dphic + ', y0 = ' + y0 + ', y1 = ' + y1 + ', y2 = ' + y2
					+ ', y3 = ' + y3 + ', y4 = ' + y4);

			/* 			tblRow.html(getTableRowMarkUp(idToAllocate, lm, a, dphi, temp, ac,
			 dphic, y0, y1, y2, y3, y4)); */

			tblRow.find('.accls').html(ac);
			tblRow.find('.dphiccls').html(dphic);
			tblRow.find('.y0cls').val(y0);
			tblRow.find('.y1cls').val(y1);
			tblRow.find('.y2cls').val(y2);
			tblRow.find('.y3cls').val(y3);
			tblRow.find('.y4cls').val(y4);
		}

		function calculateY0(ac) {

			// TODO: Calculate Value `T`
			var T = 1

			console.log('d = ' + parseFloat($('#rb_d_1').val()) + ', rho = '
					+ parseFloat($('#rb_rho_1').val()));
			var dDivideByRho = (parseFloat($('#rb_d_1').val()) * parseFloat($(
					'#rb_rho_1').val()));
			console.log('dDivideByRho = ' + dDivideByRho);

			var y0MultiplicationFactor = ac / dDivideByRho;
			console.log('y0MultiplicationFactor = ' + y0MultiplicationFactor);

			var y0a1 = parseFloat($('#y0a1').val())
					* Math.pow(y0MultiplicationFactor, 2);
			var y0a2 = parseFloat($('#y0a2').val()) * y0MultiplicationFactor;
			var y0 = (parseFloat($('#LMy0a0').val()) * (y0a1 + y0a2 + parseFloat($(
					'#y0a3').val())))
					+ (parseFloat($('#y0a5').val()) * T)
					+ parseFloat($('#LMy0a6').val());

			return isNaN(y0) ? 0 : y0;
		}

		function calculateY1(dphic) {

			// TODO: Calculate Value `T`
			var T = 1

			var dDivideByRho = (parseFloat($('#rb_d_1').val()) * parseFloat($(
					'#rb_rho_1').val()));

			var y1MultiplicationFactor = dphic / dDivideByRho;
			var y1a1 = parseFloat($('#y1a1').val())
					* Math.pow(y1MultiplicationFactor, 2);
			var y1a2 = parseFloat($('#y1a2').val()) * y1MultiplicationFactor;
			var y1 = (parseFloat($('#LMy1a0').val()) * (y1a1 + y1a2 + parseFloat($(
					'#y1a3').val())))
					+ (parseFloat($('#y1a5').val()) * T)
					+ parseFloat($('#LMy1a6').val());

			return isNaN(y1) ? 0 : y1;
		}

		function calculateY2(ac, dphic) {

			// TODO: Calculate Value `T`
			var T = 1

			var y2MultiplicationFactor = ac / dphic;
			var y2a1 = parseFloat($('#y2a1').val()) * y2MultiplicationFactor;
			var y2a2 = parseFloat($('#y2a2').val()) * y2MultiplicationFactor;
			var y2 = (parseFloat($('#LMy2a0').val()) * (y2a1 + y2a2 + parseFloat($(
					'#y2a3').val())))
					+ (parseFloat($('#y2a5').val()) * T)
					+ parseFloat($('#LMy2a6').val());

			return isNaN(y2) ? 0 : y2;
		}

		function calculateY3() {
			return 1;
		}

		function calculateY4(ac, dphic) {

			// TODO: Calculate Value `T`
			var T = 1

			var y4MultiplicationFactor = (((parseFloat($('#y4a1').val()) * ac) - (parseFloat($(
					'#y4a2').val()) * dphic)) / ((parseFloat($('#y4a3').val()) * dphic) - (parseFloat($(
					'#y4a8').val()) * ac)));
			var y4 = (parseFloat($('#LMy4a0').val()) * y4MultiplicationFactor)
					+ (parseFloat($('#y4a5').val()) * T)
					+ parseFloat($('#LMy4a6').val());

			return isNaN(y4) ? 0 : y4;
		}

		function updateUploadValues(elem) {
			console.log('Element Selected = ' + elem);
			var a0, a1, a2, a3, a5, a6, a8, ch1Alpha, ch2Alpha, ch1Beta, ch2Beta, ch1s, ch2s, ch1n, ch2n;

			switch (elem) {
			case 'y0':
				a0 = $('#LMy0a0').val();
				a1 = $('#y0a1').val();
				a2 = $('#y0a2').val();
				a3 = $('#y0a3').val();
				a5 = $('#y0a5').val();
				a6 = $('#LMy0a6').val();
				a8 = $('#y0a8').val();
				console.log('Case y0 : a0=' + a0 + ', a1=' + a1 + ', a2=' + a2
						+ ', a3=' + a3 + ', a5=' + a5 + ', a6=' + a6 + ', a8='
						+ a8);
				break;

			case 'y1':
				a0 = $('#LMy1a0').val();
				a1 = $('#y1a1').val();
				a2 = $('#y1a2').val();
				a3 = $('#y1a3').val();
				a5 = $('#y1a5').val();
				a6 = $('#LMy1a6').val();
				a8 = $('#y1a8').val();
				console.log('Case y1: a0=' + a0 + ', a1=' + a1 + ', a2=' + a2
						+ ', a3=' + a3 + ', a5=' + a5 + ', a6=' + a6 + ', a8='
						+ a8);
				break;

			case 'y2':
				a0 = $('#LMy2a0').val();
				a1 = $('#y2a1').val();
				a2 = $('#y2a2').val();
				a3 = $('#y2a3').val();
				a5 = $('#y2a5').val();
				a6 = $('#LMy2a6').val();
				a8 = $('#y2a8').val();
				console.log('Case y2: a0=' + a0 + ', a1=' + a1 + ', a2=' + a2
						+ ', a3=' + a3 + ', a5=' + a5 + ', a6=' + a6 + ', a8='
						+ a8);
				break;

			case 'y3':
				a0 = $('#LMy3a0').val();
				a1 = $('#y3a1').val();
				a2 = $('#y3a2').val();
				a3 = $('#y3a3').val();
				a5 = $('#y3a5').val();
				a6 = $('#LMy3a6').val();
				a8 = $('#y3a8').val();
				console.log('Case y3: a0=' + a0 + ', a1=' + a1 + ', a2=' + a2
						+ ', a3=' + a3 + ', a5=' + a5 + ', a6=' + a6 + ', a8='
						+ a8);
				break;

			case 'y4':
				a0 = $('#LMy4a0').val();
				a1 = $('#y4a1').val();
				a2 = $('#y4a2').val();
				a3 = $('#y4a3').val();
				a5 = $('#y4a5').val();
				a6 = $('#LMy4a6').val();
				a8 = $('#y4a8').val();
				console.log('Case y4: a0=' + a0 + ', a1=' + a1 + ', a2=' + a2
						+ ', a3=' + a3 + ', a5=' + a5 + ', a6=' + a6 + ', a8='
						+ a8);
				break;
			}

			var powToRaise = $('#Ab').val() / 20;
			ch1Alpha = Math.pow(10, powToRaise);

			ch2Alpha = 1;

			ch1Beta = $('#DPhib').val();

			ch1n = ch2n = ch2Beta = 0;

			ch1s = ch2s = -1 / (2 * 3.14);

			$('#rb_a0').val(a0);
			$('#rb_a1').val(a1);
			$('#rb_a2').val(a2);
			$('#rb_a3').val(a3);
			$('#rb_a5').val(a5);
			$('#rb_a6').val(a6);
			$('#rb_a8').val(a8);
			$('#rb_ch1Alpha').val(ch1Alpha);
			$('#rb_ch2Alpha').val(ch2Alpha);
			$('#rb_ch1Beta').val(ch1Beta);
			$('#rb_ch2Beta').val(ch2Beta);
			$('#rb_ch1n').val(ch1n);
			$('#rb_ch2n').val(ch2n);
			$('#rb_ch1s').val(ch1s);
			$('#rb_ch2s').val(ch2s);
			$('#rb_d').val($('#rb_d_1').val());
			$('#rb_rho').val($('#rb_rho_1').val());
		}

		function autoCalculate() {

			var lm = $("input[name='lm[]']")
            .map(function(){return $(this).val();}).get();

			var y0 = $("input[name='y0[]']")
            .map(function(){return $(this).val();}).get();
			var lry0 = linearRegression(y0, lm);
			console.log(y0);
			console.log('y0 = ' + y0 + ', lm = ' + lm + ', lry0 slope = ' + lry0.slope + ', intercept = ' + lry0.intercept);
			$('#LMy0a0').val(lry0.slope);
			$('#LMy0a6').val(lry0.intercept);
			
			var y1 = $("input[name='y1[]']")
            .map(function(){return $(this).val();}).get();
			var lry1 = linearRegression(y1, lm);
			console.log('lry1 slope = ' + lry1.slope + ', intercept = ' + lry1.intercept);
			$('#LMy1a0').val(lry1.slope);
			$('#LMy1a6').val(lry1.intercept);
			
			var y2 = $("input[name='y2[]']")
            .map(function(){return $(this).val();}).get();
			var lry2 = linearRegression(y2, lm);
			console.log('lry2 slope = ' + lry2.slope + ', intercept = ' + lry2.intercept);
			$('#LMy2a0').val(lry2.slope);
			$('#LMy2a6').val(lry2.intercept);
			
			var y3 = $("input[name='y3[]']")
            .map(function(){return $(this).val();}).get();
			var lry3 = linearRegression(y3, lm);
			console.log('lry3 slope = ' + lry3.slope + ', intercept = ' + lry3.intercept);
			$('#LMy3a0').val(lry3.slope);
			$('#LMy3a6').val(lry3.intercept);
			
			var y4 = $("input[name='y4[]']")
            .map(function(){return $(this).val();}).get();
			var lry4 = linearRegression(y4, lm);
			console.log('lry4 slope = ' + lry4.slope + ', intercept = ' + lry4.intercept);
			$('#LMy4a0').val(lry4.slope);
			$('#LMy4a6').val(lry4.intercept);
			
			/* var formData = $('#rt_mid_tbl_submit').serialize();
			var formData = {
				lm : $('.lmcls').val()
			}
			console.log('formData = ' + formData);

			$.ajax({
				type : 'POST',
				url : "autocalculate",
				data : formData,
				traditional : true,
				success : function(data) {

					console.log(data); 

						$('#LMy0a0').val(data.y0a0);
						$('#LMy1a0').val(data.y1a0);
						$('#LMy2a0').val(data.y2a0);
						$('#LMy3a0').val(data.y3a0);
						$('#LMy4a0').val(data.y4a0);

						$('#LMy0a6').val(data.y0a6);
						$('#LMy1a6').val(data.y1a6);
						$('#LMy2a6').val(data.y2a6);
						$('#LMy3a6').val(data.y3a6);
						$('#LMy4a6').val(data.y4a6);
/* 				}
			}); */
		}

		function linearRegression(y,x){
	        var lr = {};
	        var n = y.length;
	        var sum_x = 0;
	        var sum_y = 0;
	        var sum_xy = 0;
	        var sum_xx = 0;
	        var sum_yy = 0;

	        for (var i = 0; i < y.length; i++) {

	            sum_x += x[i];
	            sum_y += y[i];
	            sum_xy += (x[i]*y[i]);
	            sum_xx += (x[i]*x[i]);
	            sum_yy += (y[i]*y[i]);
	        } 

	        lr['slope'] = (n * sum_xy - sum_x * sum_y) / (n*sum_xx - sum_x * sum_x);
	        lr['intercept'] = (sum_y - lr.slope * sum_x)/n;
	        lr['r2'] = Math.pow((n*sum_xy - sum_x*sum_y)/Math.sqrt((n*sum_xx-sum_x*sum_x)*(n*sum_yy-sum_y*sum_y)),2);

	        return lr;
		}
		function uploadValues() {

			var data = {
				a0 : $('#rb_a0').val(),
				a1 : $('#rb_a1').val(),
				a2 : $('#rb_a2').val(),
				a3 : $('#rb_a3').val(),
				a5 : $('#rb_a5').val(),
				a6 : $('#rb_a6').val(),
				a8 : $('#rb_a8').val(),
				coeff_d : $('#rb_d').val(),
				rho : $('#rb_rho').val(),
				ch1alpha0 : $('#rb_ch1Alpha').val(),
				ch2alpha0 : $('#rb_ch2Alpha').val(),
				ch1beta0 : $('#rb_ch1Beta').val(),
				ch2beta0 : $('#rb_ch2Beta').val(),
				s1 : $('#rb_ch1s').val(),
				s2 : $('#rb_ch2s').val(),
				n1 : $('#rb_ch1n').val(),
				n2 : $('#rb_ch2n').val()
			};
			console.log(data);

			$.ajax({
				type : 'POST',
				url : "uploadValues",
				data : data,
				success : function(data) {
					console.log(data);
				}
			});
		}
	</script>
</body>
</html>