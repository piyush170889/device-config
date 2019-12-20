<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
					<%-- <s:iterator value="tableNames">
											<option>
												<s:property />
											</option>
										</s:iterator> --%>

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
							name="elementToUpload" class="rdBtnGrp" /></td>
					</tr>
					<tr>
						<td>Y1</td>
						<td><input type="text" id="y1a1" value="0.0" /></td>
						<td><input type="text" id="y1a2" value="0.0" /></td>
						<td><input type="text" id="y1a3" value="0.0" /></td>
						<td><input type="text" id="y1a5" value="0.0" /></td>
						<td><input type="text" id="y1a8" value="0.0" /></td>
						<td><input type="radio" onclick="updateUploadValues('y1')"
							name="elementToUpload" class="rdBtnGrp" /></td>
					</tr>
					<tr>
						<td>Y2</td>
						<td><input type="text" id="y2a1" value="0.0" /></td>
						<td><input type="text" id="y2a2" value="0.0" /></td>
						<td><input type="text" id="y2a3" value="0.0" /></td>
						<td><input type="text" id="y2a5" value="0.0" /></td>
						<td><input type="text" id="y2a8" value="0.0" /></td>
						<td><input type="radio" onclick="updateUploadValues('y2')"
							name="elementToUpload" class="rdBtnGrp" /></td>
					</tr>
					<tr>
						<td>Y3</td>
						<td><input type="text" id="y3a1" value="0.0" /></td>
						<td><input type="text" id="y3a2" value="0.0" /></td>
						<td><input type="text" id="y3a3" value="0.0" /></td>
						<td><input type="text" id="y3a5" value="0.0" /></td>
						<td><input type="text" id="y3a8" value="0.0" /></td>
						<td><input type="radio" onclick="updateUploadValues('y3')"
							name="elementToUpload" class="rdBtnGrp" /></td>
					</tr>
					<tr class="no-bottom-border">
						<td>Y4</td>
						<td><input type="text" id="y4a1" value="0.0" /></td>
						<td><input type="text" id="y4a2" value="0.0" /></td>
						<td><input type="text" id="y4a3" value="0.0" /></td>
						<td><input type="text" id="y4a5" value="0.0" /></td>
						<td><input type="text" id="y4a8" value="0.0" /></td>
						<td><input type="radio" onclick="updateUploadValues('y4')"
							name="elementToUpload" class="rdBtnGrp" /></td>
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
						<input type="text" id="Ab" value="1"
							onkeyup="updateAllRowValues()" />
					</p>
				</div>

				<div class="right-upper-section-1">
					<p>DPhib</p>
					<p>
						<input type="text" id="DPhib" value="0"
							onkeyup="updateAllRowValues()" />
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
					<input type="text" onkeyup="updateAllRowValues()"
						style="width: 30%" id="rb_d_1" value="0.0" />
				</div>
				<div
					style="width: 25%; height: 48%; float: left; text-align: center;">
					rho</div>
				<div
					style="width: 75%; height: 48%; float: left; text-align: center;">
					<input type="text" onkeyup="updateAllRowValues()"
						style="width: 30%" id="rb_rho_1" value="0.0" />
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