<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="page3-main-div">

	<div class="page3-left-sec">

		<!-- Material Selection Section -->
		<div class="page3-left-top-sec">
			<div class="page3-left-top-sec-1">
				<label>Material</label>
			</div>
			<div class="page3-left-top-sec-2">
				<select onchange="populateFreqData()" id="material">

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
		<div class="page3-left-mid-sec"></div>

		<!-- Table Section -->
		<div class="page3-bottom-sec">
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
	<div class="right-sec">

		<!-- Upper Header Data -->
		<div class="init-div right-upper-section">

			<div class="right-upper-right-sec">

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

				<div class="a0-a6-val-sec">
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
		<div class="right-lower-upper-sec">

			<div class="right-lower-upper-sec-1">
				<div class="right-lower-upper-sec-val-1">d</div>
				<div class="right-lower-upper-sec-val-2">
					<input type="text" onkeyup="updateAllRowValues()" id="rb_d_1"
						value="0.0" />
				</div>
				<div class="right-lower-upper-sec-val-1">rho</div>
				<div class="right-lower-upper-sec-val-2">
					<input type="text" onkeyup="updateAllRowValues()" id="rb_rho_1"
						value="0.0" />
				</div>
			</div>

			<div class="right-lower-upper-sec-2">
				<div class="auto-btn-div">
					<input type="submit" onclick="autoCalculate()"
						value="Auto Calculate" />
				</div>
			</div>

		</div>
		<!-- ./Lower Upper Section -->


		<!-- Lower Bottom Section -->
		<div class="right-lower-bottom-sec">
			<div class="right-lower-bottom-sec-label-value">d</div>
			<div class="right-lower-bottom-sec-label-value">
				<input type="text" value="0.0" id="rb_d" />
			</div>
			<div class="right-lower-bottom-sec-label-value">rho</div>
			<div class="right-lower-bottom-sec-label-value">
				<input type="text" value="0.0" id="rb_rho" />
			</div>
			<div class="right-lower-bottom-sec-label-value">Ch1Alpha0</div>
			<div class="right-lower-bottom-sec-label-value">
				<input type="text" value="0.0" id="rb_ch1Alpha" />
			</div>
			<div class="right-lower-bottom-sec-label-value">Ch1s</div>
			<div class="right-lower-bottom-sec-label-value">
				<input type="text" value="0.0" id="rb_ch1s" />
			</div>
		</div>

		<div class="right-lower-bottom-sec">
			<div class="right-lower-bottom-sec-label-value">a1</div>
			<div class="right-lower-bottom-sec-label-value">
				<input type="text" value="0.0" id="rb_a1" />
			</div>
			<div class="right-lower-bottom-sec-label-value">a2</div>
			<div class="right-lower-bottom-sec-label-value">
				<input type="text" value="0.0" id="rb_a2" />
			</div>
			<div class="right-lower-bottom-sec-label-value">Ch1Beta0</div>
			<div class="right-lower-bottom-sec-label-value">
				<input type="text" value="0.0" id="rb_ch1Beta" />
			</div>
			<div class="right-lower-bottom-sec-label-value">Ch1n</div>
			<div class="right-lower-bottom-sec-label-value">
				<input type="text" value="0.0" id="rb_ch1n" />
			</div>
		</div>

		<div class="right-lower-bottom-sec">
			<div class="right-lower-bottom-sec-label-value">a3</div>
			<div class="right-lower-bottom-sec-label-value">
				<input type="text" value="0.0" id="rb_a3" />
			</div>
			<div class="right-lower-bottom-sec-label-value">a8</div>
			<div class="right-lower-bottom-sec-label-value">
				<input type="text" value="0.0" id="rb_a8" />
			</div>
			<div class="right-lower-bottom-sec-label-value">Ch2Alpha0</div>
			<div class="right-lower-bottom-sec-label-value">
				<input type="text" value="0.0" id="rb_ch2Alpha" />
			</div>
			<div class="right-lower-bottom-sec-label-value">Ch2s</div>
			<div class="right-lower-bottom-sec-label-value">
				<input type="text" value="0.0" id="rb_ch2s" />
			</div>
		</div>

		<div class="right-lower-bottom-sec">
			<div class="right-lower-bottom-sec-label-value">
				a0</div>
			<div class="right-lower-bottom-sec-label-value">
				<input type="text" value="0.0" id="rb_a0" />
			</div>
			<div class="right-lower-bottom-sec-label-value">
				a5</div>
			<div class="right-lower-bottom-sec-label-value">
				<input type="text" value="0.0" id="rb_a5" />
			</div>
			<div class="right-lower-bottom-sec-label-value">
				Ch2Beta0</div>
			<div class="right-lower-bottom-sec-label-value">
				<input type="text" value="0.0" id="rb_ch2Beta" />
			</div>
			<div class="right-lower-bottom-sec-label-value">
				Ch2n</div>
			<div class="right-lower-bottom-sec-label-value">
				<input type="text" value="0.0" id="rb_ch2n" />
			</div>
		</div>

		<div class="right-lower-bottom-sec">
			<div class="right-lower-bottom-sec-label-value">
				a6</div>
			<div class="right-lower-bottom-sec-label-value">
				<input type="text" value="0.0" id="rb_a6" />
			</div>
		</div>


		<div class="upload-btn-sec">
			<div class="upload-btn-sec-full">
				<input type="submit" onclick="uploadValues()" value="Upload" />
			</div>
		</div>
		<!-- ./Lower Bottom Section -->

	</div>
	<!-- ./Right Section -->

</div>