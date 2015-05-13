var Narrator = function(gender, accent, voices){
	this.gender = gender;
	this.accent = accent;
	this.voices = voices
}

Narrator.prototype = {
	search: function(){
		$.ajax({
			type: 'GET',
			data: { narrator: {gender: this.gender, accent: this. accent, voices: this.voices}}
			dataType: 'json',
			url: "http://localhost:3000/narrators"
		}).done(function(){
			console.log("it worked!")
		}).fail(function(){
			console.log("failure")
		}).always(function(){
			console.log("you managed to do something right")
		})
	}
}
