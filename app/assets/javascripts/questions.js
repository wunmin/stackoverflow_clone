// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {
	$(".question_upvote").on("click", function(event) {
	event.preventDefault();
	var questionId = $(this).data("question-id");
	var url = "/questions/" + questionsId + "/vote"
	$.ajax({
	    type: "POST",
	    url: url,
	    data: {"question_id": questionId,
	           "vote": 1},
	    dataType: "json"
	  }).done(function(response){
	    $("#post" + response["post_id"] + " span").text(response["votes"] + " points");
	    $("#post" + response["post_id"] + " button" + ".upvote").attr("disabled", "disabled")
	});
	});
});