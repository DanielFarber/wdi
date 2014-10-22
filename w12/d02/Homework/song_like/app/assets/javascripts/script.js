$(function() {
	
	$("div .delete").click(deleteListener)
	$("button#rock_it").click(addListener)
	$("button.like").click(likeListener)
	displayLikes()


})

function deleteListener(){
	var url = "http://127.0.0.1:3000/songs/" + this.parentNode.id
	var options = {
		url: url,
		type: "DELETE",
		success: songDeleteReq
	}
	$.ajax(options)
}

function songDeleteReq(feed) {
	$("div#" + feed.id).remove()
}

function addListener() {
	var name = $("input#name").val()
	var url = "http://127.0.0.1:3000/songs/"
	var options = {
		type: "POST",
		url: url,
		data: {name: name},
		success: songPostReq
	}
	$.ajax(options)	
}

function songPostReq(feed) {
	$("div#list").append($("script#song_template").html())
	$("div#song_id span").text(feed.name)
	$("div#song_id").attr("id", feed.id)
	$("input#name").val("")
	$("div#" + feed.id + " button.like").click(likeListener)
	$("div#" + feed.id + " button.delete").click(deleteListener)
}

function likeListener() {
	var song_id = this.parentNode.id
	var user_id = $("h1").attr("class")
	var options = {
		url: "http://127.0.0.1:3000/likes",
		type: "POST",
		data: {user_id: user_id, song_id: song_id},
		success: likePostReq
	}
	$.ajax(options)
}

function likePostReq(feed) {
	var el = "div#" + feed.song_id + " button.like"
	$(el).prop({disabled: true})
	$(el).text("Liked!")
}

function displayLikes() {
	var options = {
		url: "http://127.0.0.1:3000/likes/" + $("h1").attr("class"),
		success: likeGet
	}
	$.ajax(options)
}

function likeGet(feed) {
	feed.forEach(function(like) {
		var el = "div#" + like.song_id + " button.like"
		$(el).prop({disabled: true})
		$(el).text("Liked!")
	})
}











