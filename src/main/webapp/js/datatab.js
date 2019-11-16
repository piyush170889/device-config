function getDataTabDetailsJson() {

	$
			.ajax({
				type : 'GET',
				url : "getDataTabDetailsJson",
				success : function(data) {
					console.log(data);

					var activeElementId = '';
					if (document.hasFocus()) {
						var activeElement = document.activeElement;
						var inputs = [ 'input', 'textarea' ];

						if (activeElement
								&& inputs.indexOf(activeElement.tagName
										.toLowerCase()) !== -1) {
							activeElementId = document.activeElement.id;
							console.log('Active Element = ' + activeElementId);
						}
					}

					// Set Material Parameters
					// $('#mp_moist_perc').val(data.);
					$('#mp_mat_Temp').html(data.slnoIrR.mat_Temp);
					// $('#mp_mat_density').val(data.);
					// $('#mp_mat_temp_source').val(data.);

					// Set Internal Temp Control Parameters
					$('#itc_temp_PS').html(data.slnoIrR.temp_PS);
					$('#itc_temp_CPU').html(data.slnoIrR.temp_CPU);
					$('#itc_temp_RF').html(data.slnoIrR.temp_RF);
					$('#itc_h_Dutycycle').html(data.slnoIrR.h_Dutycycle);

					!activeElementId || (activeElementId && activeElementId != 'itc_int_temp_setpoint') ? $('#itc_int_temp_setpoint').val(data.slnoHrR.int_temp_setpoint) : console.log('active::itc_int_temp_setpoint');

					!activeElementId || (activeElementId && activeElementId != 'itc_p') ? $('#itc_p').val(data.slnoHrR.p) : console.log('active::itc_p');

					!activeElementId || (activeElementId && activeElementId != 'itc_i') ? $('#itc_i').val(data.slnoIrR.i) : console.log('active::itc_i');

					!activeElementId || (activeElementId && activeElementId != 'itc_d') ? $('#itc_d').val(data.slnoIrR.d) : console.log('active::itc_d');

					// Device Settings Parameters
					!activeElementId || (activeElementId && activeElementId != 'ds_average_time_zero') ? $('#ds_average_time_zero').val(data.slnoHrR.average_time_zero)	: console.log('active::ds_average_time_zero');

					!activeElementId || (activeElementId && activeElementId != 'ds_det_Avg_time') ? $('#ds_det_Avg_time').val(data.slnoHrR.det_Avg_time): console.log('active::ds_det_Avg_time');

					!activeElementId || (activeElementId && activeElementId != 'ds_normal_Avg_time') ? $('#ds_normal_Avg_time').val(data.slnoHrR.normal_Avg_time) : console.log('active::ds_normal_Avg_time');

					
					// Internal Calculations Parameters
					// $('#itc_freq').val(data.);
					
					!activeElementId || (activeElementId && activeElementId != 'itc_freq1') ? $('#itc_freq1').val(data.slnoHrR.PLL_Freq1) : console.log('active::itc_freq1');

					!activeElementId || (activeElementId && activeElementId != 'itc_freq2') ? $('#itc_freq2').val(data.slnoHrR.PLL_Freq2) : console.log('active::itc_freq2');
					

					// $('#itc_rf_gain').val(data.);
					!activeElementId || (activeElementId && activeElementId != 'itc_rf_gain1') ? $('#itc_rf_gain1').val(data.slnoHrR.ch1_RF_Gain) : console.log('active::itc_rf_gain1');
					
					!activeElementId || (activeElementId && activeElementId != 'itc_rf_gain2') ? $('#itc_rf_gain2').val(data.slnoHrR.CH2_RF_Gain) : console.log('active::itc_rf_gain2');

					// $('#itc_analog_gain').val(data.slnoHrR.);
					!activeElementId || (activeElementId && activeElementId != 'itc_analog_gain1') ? $('#itc_analog_gain1').val(data.slnoHrR.ch1_A_Gain) : console.log('active::itc_analog_gain1');

					!activeElementId || (activeElementId && activeElementId != 'itc_analog_gain2') ? $('#itc_analog_gain2').val(data.slnoHrR.ch2_A_Gain) : console.log('active::itc_analog_gain2');

					$('#itc_i0').html(data.slnoIrR.i);
					$('#itc_i1').html(data.slnoIrR.i1);
					$('#itc_i2').html(data.slnoIrR.i2);
					 $('#itc_q0').html(data.slnoIrR.q);
					 $('#itc_q1').html(data.slnoIrR.q1);
					 $('#itc_q2').html(data.slnoIrR.q2);
					$('#itc_d0').html(data.slnoIrR.d);
					 $('#itc_d1').html(data.slnoIrR.d1);
					 $('#itc_d2').html(data.slnoIrR.d2);
					 $('#itc_r0').html(data.slnoIrR.r);
					 $('#itc_r1').html(data.slnoIrR.r1);
					 $('#itc_r2').html(data.slnoIrR.r2);
					$('#itc_phi').html(data.slnoIrR.phi);
					$('#itc_phi1').html(data.slnoIrR.phi1);
					$('#itc_phi2').html(data.slnoIrR.phi2);
					 $('#itc_a0').html(data.slnoIrR.a);
					 $('#itc_a1').html(data.slnoIrR.a1);
					 $('#itc_a2').html(data.slnoIrR.a2);
					$('#itc_dphi').html(data.slnoIrR.dphi);
					$('#itc_dphi1').html(data.slnoIrR.dphi1);
					$('#itc_dphi2').html(data.slnoIrR.dphi2);
					$('#itc_calR0').html(data.slnoIrR.calR0);
					$('#itc_calR01').html(data.slnoIrR.calR01);
					$('#itc_calR02').html(data.slnoIrR.calR02);
					$('#itc_calphi0').html(data.slnoIrR.calphi0);
					$('#itc_calphi01').html(data.slnoIrR.calphi01);
					$('#itc_calphi02').html(data.slnoIrR.calphi02);
					$('#itc_rz0').html(data.slnoIrR.r_z);
					$('#itc_rz1').html(data.slnoIrR.r_z1);
					$('#itc_rz2').html(data.slnoIrR.r_z2);
					$('#itc_phiz').html(data.slnoIrR.phiz);
					$('#itc_phiz1').html(data.slnoIrR.phiz1);
					$('#itc_phiz2').html(data.slnoIrR.phiz2);

					// Co-efficient Parameters
					!activeElementId || (activeElementId && activeElementId != 'ce_coeffD') ? $('#ce_coeffD').val(data.slnoHrR.coeffD) : console.log('active::ce_coeffD');
					
					!activeElementId || (activeElementId && activeElementId != 'ce_rho') ? $('#ce_rho').val(data.slnoHrR.rho) : console.log('active::ce_rho');
					
					!activeElementId || (activeElementId && activeElementId != 'ce_ch1Alpha0') ? $('#ce_ch1Alpha0').val(data.slnoHrR.ch1Alpha0) : console.log('active::ce_ch1Alpha0');
					
					!activeElementId || (activeElementId && activeElementId != 'ce_ch1_Beta0') ? $('#ce_ch1_Beta0').val(data.slnoHrR.ch1_Beta0): console.log('active::ce_ch1_Beta0');
					
					!activeElementId || (activeElementId && activeElementId != 'ce_ch2Alpha0') ? $('#ce_ch2Alpha0').val(data.slnoHrR.ch2Alpha0): console.log('active::ce_ch2Alpha0');
					
					!activeElementId || (activeElementId && activeElementId != 'ce_ch2Beta0') ? $('#ce_ch2Beta0').val(data.slnoHrR.ch2Beta0) : console.log('active::ce_ch2Beta0');
					
					!activeElementId || (activeElementId && activeElementId != 'ce_a0') ? $('#ce_a0').val(data.slnoHrR.a0) : console.log('active::ce_a0');
					
					!activeElementId || (activeElementId && activeElementId != 'ce_a1') ? $('#ce_a1').val(data.slnoHrR.a1) : console.log('active::ce_a1');
					
					!activeElementId || (activeElementId && activeElementId != 'ce_a2') ? $('#ce_a2').val(data.slnoHrR.a2) : console.log('active::ce_a2');
					
					!activeElementId || (activeElementId && activeElementId != 'ce_a3') ? $('#ce_a3').val(data.slnoHrR.a3) : console.log('active::ce_a3');
					
					!activeElementId || (activeElementId && activeElementId != 'ce_a5') ? $('#ce_a5').val(data.slnoHrR.a5) : console.log('active::ce_a5');
					
					!activeElementId || (activeElementId && activeElementId != 'ce_a6') ? $('#ce_a6').val(data.slnoHrR.a6) : console.log('active::ce_a6');
					
					!activeElementId || (activeElementId && activeElementId != 'ce_a8') ? $('#ce_a8').val(data.slnoHrR.a8) : console.log('active::ce_a8');
					
					!activeElementId || (activeElementId && activeElementId != 'ce_s1') ? $('#ce_s1').val(data.slnoHrR.s1) : console.log('active::ce_s1');
					
					!activeElementId || (activeElementId && activeElementId != 'ce_s2') ? $('#ce_s2').val(data.slnoHrR.s2): console.log('active::ce_s2');
					
					!activeElementId || (activeElementId && activeElementId != 'ce_n1') ? $('#ce_n1').val(data.slnoHrR.n1) : console.log('active::ce_n1');
					
					!activeElementId || (activeElementId && activeElementId != 'ce_n2') ? $('#ce_n2').val(data.slnoHrR.n2): console.log('active::ce_n2');
					
					// Diagnostics Parameter Parameters
					$('#dp_ADC_Counts_I').html(data.slnoIrR.ADC_Counts_I);
					$('#dp_ADC_Counts_Q').html(data.slnoIrR.ADC_Counts_Q);

					// 4-20 mA Limits Parameter
					!activeElementId || (activeElementId && activeElementId != 'dp_blink_Range_max') ? $('#dp_blink_Range_max').val(data.slnoHrR.blink_Range_max) : console.log('active::dp_blink_Range_max');
					
					!activeElementId || (activeElementId && activeElementId != 'dp_blink_range_min') ? $('#dp_blink_range_min').val(data.slnoHrR.blink_range_min) : console.log('active::dp_blink_range_min');
					
					!activeElementId || (activeElementId && activeElementId != 'dp_mat_temp_Max') ? $('#dp_mat_temp_Max').val(data.slnoHrR.mat_temp_Max) : console.log('active::dp_mat_temp_Max');
					
					!activeElementId || (activeElementId && activeElementId != 'dp_mat_temp_min') ? $('#dp_mat_temp_min').val(data.slnoHrR.mat_temp_min) : console.log('active::dp_mat_temp_min');
					

					var progressbaractivity = $('#progress-bar-activity').val();

					if (progressbaractivity == '1') {
						var remainingTime = data.slnoIrR.remaining_time;

						if (remainingTime > 0) {
							$('#progress-bar-span').css('width',
									(remainingTime + '%'));
						} else {
							$('#progress-bar-activity').val('0');
							$('#progress-bar-span').css('width', 0);
						}
					}
				}
			});
}

function updateDataTabDetails(ch1alpha0, ch1beta0, ch2alpha0, ch2beta0, a0, a1,
		a2, a3, coeff_d, a5, a6, modbus_mattemp, pll_freq1, pll_freq2,
		average_time_zero, normal_avg_time, det_avg_time, temp_sel, mval_sel,
		ch1_a_gain, ch1_rf_gain, mode, p, i, d, int_temp_setpoint,
		blink_range_max, blink_range_min, mat_temp_min, mat_temp_max,
		ch2_a_gain, ch2_rf_gain, proxi_enable, tempcont_enable,
		iout_calib_5_ma, iout_calib_19_ma, s1, s2, n1, n2, spare, rho, a8,
		iz_2, iz1_2, iz2_2, qz_2, qz1_2, qz2_2, calibValue) {

	var data = {
		'calibValue' : parseInt(calibValue),
		'ch1alpha0' : parseFloat(ch1alpha0),
		'ch1beta0' : parseFloat(ch1beta0),
		'ch2alpha0' : parseFloat(ch2alpha0),
		'ch2beta0' : parseFloat(ch2beta0),
		'a0' : parseFloat(a0),
		'a1' : parseFloat(a1),
		'a2' : parseFloat(a2),
		'a3' : parseFloat(a3),
		'coeff_d' : parseFloat(coeff_d),
		'a5' : parseFloat(a5),
		'a6' : parseFloat(a6),
		'modbus_mattemp' : parseFloat(modbus_mattemp),
		'pll_freq1' : parseFloat(pll_freq1),
		'pll_freq2' : pll_freq2,
		'average_time_zero' : average_time_zero,
		'normal_avg_time' : normal_avg_time,
		'det_avg_time' : det_avg_time,
		'temp_sel' : temp_sel,
		'mval_sel' : mval_sel,
		'ch1_a_gain' : parseInt(ch1_a_gain),
		'ch1_rf_gain' : ch1_rf_gain,
		'mode' : mode,
		'p' : p,
		'i' : i,
		'd' : d,
		'int_temp_setpoint' : int_temp_setpoint,
		'blink_range_max' : blink_range_max,
		'blink_range_min' : blink_range_min,
		'mat_temp_min' : mat_temp_min,
		'mat_temp_max' : mat_temp_max,
		'ch2_a_gain' : ch2_a_gain,
		'ch2_rf_gain' : ch2_rf_gain,
		'proxi_enable' : proxi_enable,
		'tempcont_enable' : tempcont_enable,
		'iout_calib_5_ma' : iout_calib_5_ma,
		'iout_calib_19_ma' : iout_calib_19_ma,
		's1' : s1,
		's2' : s2,
		'n1' : n1,
		'n2' : n2,
		'spare' : spare,
		'rho' : rho,
		'a8' : a8,
		'iz_2' : iz_2,
		'iz1_2' : iz1_2,
		'iz2_2' : iz2_2,
		'qz_2' : qz_2,
		'qz1_2' : qz1_2,
		'qz2_2' : qz2_2
	};

	$.ajax({
		type : 'POST',
		url : "updateDataTabDetailsJson",
		data : data,
		success : function(data) {
			console.log(data);

			$('#progress-bar-activity').val('1');
		}
	});
}

function startCalibration(calibValue) {
	console.log('calibValue = ' + calibValue);

	var ch1alpha0 = $('#ce_ch1Alpha0').val();
	var ch1beta0 = $('#ce_ch1_Beta0').val();
	var ch2alpha0 = $('#ce_ch2Alpha0').val();
	var ch2beta0 = $('#ce_ch2Beta0').val();
	var a0 = $('#ce_a0').val();
	var a1 = $('#ce_a1').val();
	var a2 = $('#ce_a2').val();
	var a3 = $('#ce_a3').val();
	var coeff_d = $('#ce_coeffD').val();
	var a5 = $('#ce_a5').val();
	var a6 = $('#ce_a6').val();
	var modbus_mattemp = $('#mp_mat_Temp').val();
	var pll_freq1 = $('#itc_freq1').val();
	var pll_freq2 = $('#itc_freq2').val();
	var average_time_zero = $('#ds_average_time_zero').val();
	var normal_avg_time = $('#ds_normal_Avg_time').val();
	var det_avg_time = $('#ds_det_Avg_time').val();
	var temp_sel = 0;
	var mval_sel = 0;
	var ch1_a_gain = $('#itc_analog_gain').val();
	var ch1_rf_gain = $('#itc_rf_gain').val();
	var mode = 0;
	var p = $('#itc_p').val();
	var i = $('#itc_i').val();
	var d = $('#itc_d').val();
	var int_temp_setpoint = $('#itc_int_temp_setpoint').val();
	var blink_range_max = $('#dp_blink_Range_max').val();
	var blink_range_min = $('#dp_blink_range_min').val();
	var mat_temp_min = 0;
	var mat_temp_max = 0;
	var ch2_a_gain = $('#itc_analog_gain2').val();
	var ch2_rf_gain = $('#itc_rf_gain2').val();
	var proxi_enable = 0;
	var tempcont_enable = 0;
	var iout_calib_5_ma = 0;
	var iout_calib_19_ma = 0;
	var s1 = $('#ce_s1').val();
	var s2 = $('#ce_s2').val();
	var n1 = $('#ce_n1').val();
	var n2 = $('#ce_n2').val();
	var spare = 0;
	var rho = $('#ce_rho').val();
	var a8 = $('#ce_a8').val();
	var iz_2 = 0;
	var iz1_2 = 0;
	var iz2_2 = 0;
	var qz_2 = 0;
	var qz1_2 = 0;
	var qz2_2 = 0;

	updateDataTabDetails(ch1alpha0, ch1beta0, ch2alpha0, ch2beta0, a0, a1, a2,
			a3, coeff_d, a5, a6, modbus_mattemp, pll_freq1, pll_freq2,
			average_time_zero, normal_avg_time, det_avg_time, temp_sel,
			mval_sel, ch1_a_gain, ch1_rf_gain, mode, p, i, d,
			int_temp_setpoint, blink_range_max, blink_range_min, mat_temp_min,
			mat_temp_max, ch2_a_gain, ch2_rf_gain, proxi_enable,
			tempcont_enable, iout_calib_5_ma, iout_calib_19_ma, s1, s2, n1, n2,
			spare, rho, a8, iz_2, iz1_2, iz2_2, qz_2, qz1_2, qz2_2, calibValue)
}

function updateCalibrationValue(e, fieldId) {

	console.log('eventCode = ' + e.keyCode + ', fieldId = ' + fieldId);

	var code = (e.keyCode ? e.keyCode : e.which);

	if (code == 13) { // Enter keycode
		var id = '#' + fieldId;
		var fieldVal = $(id).val();
		var data = {
			'fieldId' : fieldId,
			'fieldValue' : fieldVal
		};

		$.ajax({
			type : 'POST',
			url : "insertFocusOutData",
			data : data,
			success : function(data) {
				console.log(data);
			}
		});
	}

}
$(document)
.ready(
		function() {
			var swidth = (screen.width) / 1920;
			var sheight = (screen.height) / 1080;

			// here we are dividing minimum factor with actual width so
			// we will get exact multiplier
			
			fwidth = (Math.min(swidth, sheight)) / swidth;
			fheight = (Math.min(swidth, sheight)) / sheight;
			
			
			homechfnameh = ((fheight * (screen.height)) - ((fheight
					* (screen.height) * (0.625 / 100))) * 2)
					* (10.37037037 / 100);
			homechfnamehgap = ((fheight * (screen.height)) - ((fheight
					* (screen.height) * (0.625 / 100))) * 2)
					* (1.851851852 / 100);
			// / 10.37037037 is actual percentage according to given
			// height from client
			// / 1.851851852 is same only width percentage.
			// and we are claculating height and width of box according
			// to both

			
			$('body').css('width', (fwidth * 100) - 1.25 + '%');
			$('body').css('height', (fheight * 100) - 2.037037037 + '%');
			$('body').css('left',
					(((100 - (fwidth * 100)) / 2) + 0.625) + '%');
			$('body').css('right',
					(((100 - (fwidth * 100)) / 2) + 0.625) + '%');
			$('body').css('top', '1.018518519%');
			$('body').css('bottom', '1.018518519%');
			
			fwidth=(fwidth-((((100 - (fwidth * 100)) / 2) + 0.625))/100)*screen.width;
			fheight=(fheight-(1.018518519/100))*screen.height;
			
			
			
			basefontsize= $("body").css('font-size');
			basefontsize=parseInt(basefontsize.replace("px",""));
			
			
			window.setInterval(function() {
				getDataTabDetailsJson();
			}, 3000);
			
			
		});