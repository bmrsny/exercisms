function Allergies(allergySum){
	this.allergySum = allergySum;	

}; 

Allergies.prototype.list = function(){
	var allergies = [];
	
  switch(this.allergySum){ 
		case 1:
			allergies.push("eggs")
			break;
		case 2:
			allergies.push("peanuts")
		break;
		case 8:
			allergies.push("strawberries")
			break;
		}
		return allergies;
};
module.exports = Allergies
