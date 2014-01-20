$(document).ready(function() {

	$('#tweet_form').submit(function() {

			if ($('#Search').val().length() == 0) {

				alert("Search field cannot be blank");
				return false;
			}

		})///method ends

})//document ends

