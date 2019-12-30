function loadPage3() {

	loadPageLocal('page3_datastore');

	if (typeof $ == 'undefined') {
		var $ = jQuery;
	}

	$.ajax({
		type : "GET",
		url : 'page3',
		data : data,
		success : function(response) {

			var tableNames = response.tableNames;
			tableNames.forEach(function(tableName) {
				$('<option>').val(tableName).text(tableName).appendTo(
						'#material');
			});
		},
		error : function(xhr, status, error) {

		}
	});
}
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

				resetFreqData();

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
				console.log(error)
			}
		});
	} else {
		resetFreqData();
		alert('Please Select Appropriate Material From Dropdown');
	}
}

function resetFreqData() {

	setFreq('0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0',
			'0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0',
			'0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');

	$('.rdBtnGrp').prop('checked', false);

	setUploadValuesRightBottom("0.0", "0.0", "0.0", "0.0", "0.0", "0.0", "0.0",
			"0.0", "0.0", "0.0", "0.0", "0.0", "0.0", "0.0", "0.0");
}

function setFreq(y0a1, y0a2, y0a3, y0a5, y0a8, y1a1, y1a2, y1a3, y1a5, y1a8,
		y2a1, y2a2, y2a3, y2a5, y2a8, y3a1, y3a2, y3a3, y3a5, y3a8, y4a1, y4a2,
		y4a3, y4a5, y4a8) {

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

	// TODO: Calculate Proper `DPhic`
	var dphic = Math.abs(((0.0 + parseFloat($('#DPhib').val())) / 1));

	var y0 = calculateY0(ac);

	var y1 = calculateY1(dphic);

	var y2 = calculateY2(ac, dphic);

	// TODO: Calculate y3
	var y3 = calculateY3();

	var y4 = calculateY4(ac, dphic);

	console.log('idToAllocate = ' + idToAllocate + ', ac = ' + ac
			+ ', dphic = ' + dphic + ', y0 = ' + y0 + ', y1 = ' + y1
			+ ', y2 = ' + y2 + ', y3 = ' + y3 + ', y4 = ' + y4);

	var markup = createMarkUpToAppendToTable(idToAllocate, ac, dphic, y0, y1,
			y2, y3, y4);

	console.log('markup = ' + markup);

	$("#liset_tbl tbody").append(markup);

}

function createMarkUpToAppendToTable(idToAllocate, ac, dphic, y0, y1, y2, y3,
		y4) {
	var markup = "<tr id='"	+ idToAllocate + "'>" + getTableRowMarkUp(idToAllocate, 0.0, 0.0, 0.0, 0.0, ac, dphic, y0, y1, y2, y3, y4) + "</tr>";

	return markup;
}

function getTableRowMarkUp(idToAllocate, lm, a, dphi, temp, ac, dphic, y0, y1,
		y2, y3, y4) {

	return "<td><input type='checkbox' checked name='selcheckbox' /></td><td><input type='number' name='lm' value='"
			+ lm
			+ "' class='lmcls' /></td><td><input type='number' name='a' class='acls' value='"
			+ a
			+ "' onkeyup='updateRowValue("
			+ idToAllocate
			+ ")' /></td><td><input type='number' name='dphi' class='dphicls' value='"
			+ dphi
			+ "' onkeyup='updateRowValue("
			+ idToAllocate
			+ ")' /></td><td><input type='number' name='temp' value='"
			+ temp
			+ "' class='tempcls' /></td><td class='accls'>"
			+ ac
			+ "</td><td class='dphiccls'>"
			+ dphic
			+ "</td><td>"
			+ "<input type='number' readonly name=y0 value='"
			+ y0
			+ "' class='y0cls' />"
			+ "</td><td>"
			+ "<input type='number' readonly name=y1 value='"
			+ y1
			+ "' class='y1cls' />"
			+ "</td><td>"
			+ "<input type='number' readonly name=y2 value='"
			+ y2
			+ "' class='y2cls' />"
			+ "</td><td>"
			+ "<input type='number' readonly name=y3 value='"
			+ y3
			+ "' class='y3cls' />"
			+ "</td><td class='y4cls'>"
			+ "<input type='number' readonly name=y4 value='"
			+ y4
			+ "' class='y4cls' />"
			+ "</td><td class='no-border-right'><img src='img/garbage.png' onclick=\"deleteRow('"
			+ idToAllocate + "')\" /></td>";
}

function updateRowValue(idToAllocate) {

	console.log('table Row ID = ' + idToAllocate);
	var tblRowId = '#' + idToAllocate;

	var tblRow = $(tblRowId);
	var a = tblRow.find('.acls').val();
	var dphi = tblRow.find('.dphicls').val();

	console.log('a = ' + a + ', dphi = ' + dphi);

	var ac = parseFloat(a) + parseFloat($('#Ab').val());

	// TODO: Calculate Proper `DPhic`
	var dphic = Math.abs(((dphi + parseFloat($('#DPhib').val()))) / 1);

	var y0 = calculateY0(ac);

	var y1 = calculateY1(dphic);

	var y2 = calculateY2(ac, dphic);

	// TODO: Calculate y3
	var y3 = calculateY3();

	var y4 = calculateY4(ac, dphic);

	var lm = tblRow.find('.lmcls').val();

	var temp = tblRow.find('.tempcls').val();

	console
			.log('idToAllocate = ' + idToAllocate + ', lm = ' + lm
					+ ', temp = ' + temp + ', ac = ' + ac + ', dphic = '
					+ dphic + ', y0 = ' + y0 + ', y1 = ' + y1 + ', y2 = ' + y2
					+ ', y3 = ' + y3 + ', y4 = ' + y4);

	/*
	 * tblRow.html(getTableRowMarkUp(idToAllocate, lm, a, dphi, temp, ac, dphic,
	 * y0, y1, y2, y3, y4));
	 */

	tblRow.find('.accls').html(ac);
	tblRow.find('.dphiccls').html(dphic);
	tblRow.find('.y0cls').val(y0);
	tblRow.find('.y1cls').val(y1);
	tblRow.find('.y2cls').val(y2);
	tblRow.find('.y3cls').val(y3);
	tblRow.find('.y4cls').val(y4);
}

function updateAllRowValues() {
	console.log('UpdateAllRowValues Called');
	$("#liset_tbl tbody tr").each(function() {
		var currentRow = $(this);
		console.log('Row ID = ' + currentRow.attr('id'));
		updateRowValue(currentRow.attr('id'));
	});
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
				+ ', a3=' + a3 + ', a5=' + a5 + ', a6=' + a6 + ', a8=' + a8);
		break;

	case 'y1':
		a0 = $('#LMy1a0').val();
		a1 = $('#y1a1').val();
		a2 = $('#y1a2').val();
		a3 = $('#y1a3').val();
		a5 = $('#y1a5').val();
		a6 = $('#LMy1a6').val();
		a8 = $('#y1a8').val();
		console.log('Case y1: a0=' + a0 + ', a1=' + a1 + ', a2=' + a2 + ', a3='
				+ a3 + ', a5=' + a5 + ', a6=' + a6 + ', a8=' + a8);
		break;

	case 'y2':
		a0 = $('#LMy2a0').val();
		a1 = $('#y2a1').val();
		a2 = $('#y2a2').val();
		a3 = $('#y2a3').val();
		a5 = $('#y2a5').val();
		a6 = $('#LMy2a6').val();
		a8 = $('#y2a8').val();
		console.log('Case y2: a0=' + a0 + ', a1=' + a1 + ', a2=' + a2 + ', a3='
				+ a3 + ', a5=' + a5 + ', a6=' + a6 + ', a8=' + a8);
		break;

	case 'y3':
		a0 = $('#LMy3a0').val();
		a1 = $('#y3a1').val();
		a2 = $('#y3a2').val();
		a3 = $('#y3a3').val();
		a5 = $('#y3a5').val();
		a6 = $('#LMy3a6').val();
		a8 = $('#y3a8').val();
		console.log('Case y3: a0=' + a0 + ', a1=' + a1 + ', a2=' + a2 + ', a3='
				+ a3 + ', a5=' + a5 + ', a6=' + a6 + ', a8=' + a8);
		break;

	case 'y4':
		a0 = $('#LMy4a0').val();
		a1 = $('#y4a1').val();
		a2 = $('#y4a2').val();
		a3 = $('#y4a3').val();
		a5 = $('#y4a5').val();
		a6 = $('#LMy4a6').val();
		a8 = $('#y4a8').val();
		console.log('Case y4: a0=' + a0 + ', a1=' + a1 + ', a2=' + a2 + ', a3='
				+ a3 + ', a5=' + a5 + ', a6=' + a6 + ', a8=' + a8);
		break;
	}

	var powToRaise = $('#Ab').val() / 20;
	ch1Alpha = Math.pow(10, powToRaise);

	ch2Alpha = 1;

	ch1Beta = $('#DPhib').val();

	ch1n = ch2n = ch2Beta = 0;

	ch1s = ch2s = -1 / (2 * 3.14);

	setUploadValuesRightBottom(a0, a1, a2, a3, a5, a6, a8, ch1Alpha, ch2Alpha,
			ch1Beta, ch2Beta, ch1n, ch2n, ch1s, ch2s);
}

function setUploadValuesRightBottom(a0, a1, a2, a3, a5, a6, a8, ch1Alpha,
		ch2Alpha, ch1Beta, ch2Beta, ch1n, ch2n, ch1s, ch2s) {
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

	var lm = new Array();
	var y0 = new Array();
	var y1 = new Array();
	var y2 = new Array();
	var y3 = new Array();
	var y4 = new Array();

	$('#liset_tbl input[name=selcheckbox]:checked').each(function() {
		row = $(this).closest("tr");

		lm.push($(row).find("input[name=lm]").val());
		y0.push($(row).find("input[name=y0]").val());
		y1.push($(row).find("input[name=y1]").val());
		y2.push($(row).find("input[name=y2]").val());
		y3.push($(row).find("input[name=y3]").val());
		y4.push($(row).find("input[name=y4]").val());
	});

	console.log('lm = ' + lm + ', y0 = ' + y0 + ', y1 = ' + y1 + ', y2 = ' + y2
			+ ', y3 = ' + y3 + ', y4 = ' + y4);

	if (lm.length > 2) {
		var formData = {
			lm : lm,
			y0 : y0,
			y1 : y1,
			y2 : y2,
			y3 : y3,
			y4 : y4
		}

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
			}
		});
	} else {
		alert('Please select atleast 3 entries to auto-calculate')
	}
}

function linearRegression(y, x) {
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
		sum_xy += (x[i] * y[i]);
		sum_xx += (x[i] * x[i]);
		sum_yy += (y[i] * y[i]);
	}

	lr['slope'] = (n * sum_xy - sum_x * sum_y) / (n * sum_xx - sum_x * sum_x);
	lr['intercept'] = (sum_y - lr.slope * sum_x) / n;
	lr['r2'] = Math.pow((n * sum_xy - sum_x * sum_y)
			/ Math.sqrt((n * sum_xx - sum_x * sum_x)
					* (n * sum_yy - sum_y * sum_y)), 2);

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