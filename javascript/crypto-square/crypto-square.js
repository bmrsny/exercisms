function Crypto(sentence) {
	this.sentence = sentence
};

Crypto.prototype.normalizePlaintext = function() {
	return this.sentence.replace(/\W/g,"").toLowerCase();
};

Crypto.prototype.size = function() {
	var normalWord =  this.normalizePlaintext();
	var square = Math.ceil(Math.sqrt(normalWord.length));
	return square;
};

Crypto.prototype.plaintextSegments = function() {
	var normalText = this.normalizePlaintext();
	var stringSize = this.size();
	var segment = "";
	var container = [];
	normalText.split("").forEach(function(element,index, array){
		if(segment.length < stringSize -1) {
			if(index == array.length -1) {
				segment += element;
				container.push(segment);
			}
			segment += element
		} else {
			segment += element
			container.push(segment);
			segment = '';
		}
	});
	return container;
};

Crypto.prototype.cipthertext = function() {
	var brokenLetters = this.plaintextSegments();
	
}


module.exports = Crypto;
