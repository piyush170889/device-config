function loadPage(url, data) {
	// alert(url);
	if (typeof $ == 'undefined') {
		var $ = jQuery;
	}
	$.ajax({
		type : "GET",
		url : url,
		data : data,
		success : function(response) {
			$("#divToReplace").html(response);
		},
		error : function(xhr, status, error) {

		}
	});
}

function postData(url, data) {
	// alert(url);
	if (typeof $ == 'undefined') {
		var $ = jQuery;
	}
	$.ajax({
		type : "POST",
		url : url,
		data : data,
		success : function(response) {
			$("#divToReplace").html(response);
		},
		error : function(xhr, status, error) {

		}
	});
}