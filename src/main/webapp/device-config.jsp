<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<div class="maindiv">

	<input type="hidden" id="serial-no" /> <input type="hidden"
		id="is-conn" />

	<div class="devices-list">
		<h5>All Devices</h5>
		<ul>
			<s:iterator value="deviceMasterList" var="deviceMaster">

				<li>

					<div class="devices-label">
						<s:property value="serialNo" />
					</div>
					<div class="devices-input">
						<input type="radio" name="selectedDevice"
							value="<s:property value="serialNo" />"
							onclick="loadSelectedDeviceDetails('<s:property value="serialNo" />', '<s:property value="comments" />', 
									'<s:property value="comPort" />', '<s:property value="baudRate" />', '<s:property value="dataRate" />', 
									'<s:property value="parity" />', '<s:property value="stopBits" />', '<s:property value="isConn" />')" />
					</div>

				</li>
			</s:iterator>
		</ul>
	</div>


	<div class="devices-list">

		<h5>Connected Devices</h5>

		<ul>

			<s:iterator value="deviceMasterList" var="deviceMaster">
				<li><s:if test="%{#deviceMaster.isConn==1}">
						<div class="devices-label">
							<s:property value="serialNo" />
						</div>
						<div class="devices-input">
							<input type="radio" name="selectedDevice"
								value="<s:property value="serialNo" />"
								onclick="loadSelectedDeviceDetails('<s:property value="serialNo" />', '<s:property value="comments" />', 
									'<s:property value="comPort" />', '<s:property value="baudRate" />', '<s:property value="dataRate" />', 
									'<s:property value="parity" />', '<s:property value="stopBits" />', '<s:property value="isConn" />')" />
						</div>
					</s:if></li>
			</s:iterator>

		</ul>
	</div>

	<div class="comments-and-conn-props">
		<h5>Comments</h5>

		<div class="comments-and-conn-main-div">
			<div class="comment-box">
				<textarea id="textarea-comment"></textarea>
			</div>

			<div class="conn-props">
				<div class="comm-con-prop-devices-label">COM Port:</div>
				<div class="comm-con-prop-devices-input">
					<select id="select-com-port">

						<option>Select</option>
						<option>8080</option>
						<option>8081</option>
						<option>8082</option>
						<option>8083</option>
					</select>
				</div>
			</div>

			<div class="conn-props">
				<div class="comm-con-prop-devices-label">Baud Rate:</div>
				<div class="comm-con-prop-devices-input">
					<select id="baud-rate">
						<option>Select</option>
						<option>2</option>
						<option>4</option>
						<option>6</option>
						<option>8</option>
					</select>
				</div>
			</div>

			<div class="conn-props">
				<div class="comm-con-prop-devices-label">Data Bits:</div>
				<div class="comm-con-prop-devices-input">
					<select id="data-bits">
						<option>Select</option>
						<option>50</option>
						<option>100</option>
						<option>150</option>
						<option>200</option>
					</select>
				</div>
			</div>

			<div class="conn-props">
				<div class="comm-con-prop-devices-label">Parity:</div>
				<div class="comm-con-prop-devices-input">
					<select id="parity">
						<option>Select</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
					</select>
				</div>
			</div>

			<div class="conn-props">
				<div class="comm-con-prop-devices-label">Stop Bits:</div>
				<div class="comm-con-prop-devices-input">
					<select id="stop-bits">
						<option>Select</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
					</select>
				</div>
			</div>
		</div>

	</div>

	<div class="connect-btn">
		<input type="button" onclick="updateDeviceData()" value="Connect">
	</div>

	<!-- Custom JavaScript -->
	<script src="js/device-config.js" type="text/javascript"></script>
	<!-- ./Custom JavaScript -->

</div>