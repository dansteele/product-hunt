//need to fix why firing doesn't work on a new page

(function(){
	$(document).on('page:change', function(){
		var points;
		var motionId;
		console.log("Change");
		motionId = $(".jumbotron.wrapper").attr("data-id");

		$("a.ui-slider-handle").on( "mouseleave", function() {
			console.log("Fire event");
			points = $(this).attr("aria-valuenow");
			console.log("Points", points);
			$.ajax({
				type: "POST",
				url: "/votes/create",
				data: {"motion_id": motionId, "points": points},
				success: function(data, textStatus, jqXHR)
				{	
					console.log("Data", data);
					console.log("Success");
				},
				error: function (jqXHR, textStatus, errorThrown)
				{
					console.log("Error", errorThrown);
				},
				dataType: "json"
			});
		});
	});
})();