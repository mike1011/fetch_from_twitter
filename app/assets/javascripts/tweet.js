$(document).ready(function() {

	$('#my_form').submit(function() {

			if ($('#Enter_what_you_want_to_search').val().length() == 0) {

				alert("Search field cannot be blank");
				return false;
			}

		})///method ends

})//document ends

