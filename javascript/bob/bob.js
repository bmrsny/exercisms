//
// This is only a SKELETON file for the "Bob" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Bob = function() {};

Bob.prototype.hey = function(input) {
	var match = input.match(/[a-zA-Z]/)
	if(input == input.toUpperCase() && match){
		debugger;
		return "Whoa, chill out!";
	}else if(input.slice(-1) == "?") {
		return "Sure.";
	} else if(input.match(/^\s*$/)){
		return "Fine. Be that way!"	
	}
	return "Whatever.";
};

module.exports = Bob;
