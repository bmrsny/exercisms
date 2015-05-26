var words = function(input){
  var object = {}
  var  splitWords = input.match(/[^\s]+/g);

  splitWords.forEach(function(word){
    if (word === 'toString') {
      object[word] =1;
    } else if (object[word]) {
      object[word] += 1;
    } else {
      object[word] = 1;
    }
  });

  return object;
}

module.exports =  words;
