// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {
	$(".question_upvote").on("click", function(event) {
		event.preventDefault();
		var questionId = $(this).data("question-id");
		var url = "/votes/create"
		$.ajax({
		    type: "POST",
		    url: url,
		    data: {
		    	"vote": 1,
		    	"voteable_id": questionId,
		      "voteable_type": "Question"},
		    dataType: "json"
		}).done(function(response){
		  $(".votes_count").text(response["votes"]);
		  $(".question_upvote").unbind("click");
		  $(".question_downvote").unbind("click");
		});
	});

	$(".question_downvote").on("click", function(event) {
		event.preventDefault();
		var questionId = $(this).data("question-id");
		var url = "/votes/create"
		$.ajax({
		    type: "POST",
		    url: url,
		    data: {
		    	"vote": -1,
		    	"voteable_id": questionId,
		      "voteable_type": "Question"},
		    dataType: "json"
		}).done(function(response){
		  $(".votes_count").text(response["votes"]);
		  $(".question_upvote + response").unbind("click");
		  $(".question_downvote + response").unbind("click");
		});
	});
});