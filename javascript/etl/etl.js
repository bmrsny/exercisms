function transform(old){
  var newScores = {};
  Object.keys(old).forEach(function(score){
    var letters = old[score];
    setNewScores(score, letters);
  });

  function setNewScores(score, letters){
    letters.forEach(function(letter){
      newScores[letter.toLowerCase()] = parseInt(score);
    });
  }

  return newScores;
};




module.exports = transform;
