function loadSelectedDeviceDetails(serialNo, comments, comPort, baudRate,
		dataBits, parity, stopBits, isConn) {

	console.log("serial-no: " + serialNo + ", comments - " + comments
			+ ", comPort=" + comPort + ", baudRate = " + baudRate
			+ ", dataBits = " + dataBits + ", parity = " + parity
			+ ", stopBits = " + stopBits);

	$('#serial-no').val(serialNo);
	$('#is-conn').val(isConn);
	console.log('Setting Val');
	$('#textarea-comment').val(comments);
	$('#select-com-port').val(comPort);
	$('#baud-rate').val(baudRate);
	$('#data-bits').val(dataBits);
	$('#parity').val(parity);
	$('#stop-bits').val(stopBits);
}

function updateDeviceData() {

	var data = {
		'serialNo' : $('#serial-no').val(),
		'comments' : $('#textarea-comment').val(),
		'comPort' : $('#select-com-port').val(),
		'dataRate' : $('#data-bits').val(),
		'baudRate' : $('#baud-rate').val(),
		'parity' : $('#parity').val(),
		'stopBits' : $('#stop-bits').val(),
		'isConn' : $('#is-conn').val()
	};

	$.ajax({
		type : 'POST',
		url : "updateDeviceData",
		data : data,
		success : function(data) {
			console.log(data);
		}
	});
}