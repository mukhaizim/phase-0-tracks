//Release 0: Find the Longest Phrase
//write a function that takes an array pf words or phrases as a function paramater 
// loop through the array and check the length of each index
// select the word/phrases with longest length 
function selectLongest() {
    var array = [];
    for (var i = 0; i < arguments.length; i++) {
        array.push (arguments[i]);
    }
    
    var numbersArray =[];
    for (var i=0; i < array.length; i++){
    var	wordLength = array[i].length;
    numbersArray.push(wordLength);
    }
    
    
    var i;
    var max = -Infinity;
    for (i = 0; i < numbersArray.length; i++) {
        if (numbersArray[i] > max) {
            max = numbersArray[i];
        }
    }
    
    	//find the index of the max 
    	var maxIndex = numbersArray.indexOf(max);
    
    	// print corresponding index of the max in the first array
    	console.log("the longest phrase is:")
    	console.log(array[maxIndex]);
   
}
selectLongest("hi","mona","j","not so sure what to write");

//Release 1: Find a Key-Value Match
//function that takes two objects and 
//checks to see if the objects share at least one key-value pair.
//how do we input two hashes as parameters in a function 
//how do we compare two hashes 
//issue with below is it has to be in order

function compareHashes(firstHash, secondHash){
    var firstHash = firstHash;
    var secondHash =secondHash;
    
    for (var i in firstHash){
        for (var n in secondHash){
        if (i === n && firstHash[i] === secondHash[n]){
        return true;
        } 
        else {
            return false;
        }
        }
    }
}

compareHashes({nme: 'Spot', z: 3, y: true}, {name: 'Spot', x: 3, y: false});
compareHashes({name: "Tamir", ae: 54}, {name: "Tamir", age: 54});

//Release 2: Generate Random Test Data
//function that takes a number (N) and returns an array with (N) words 
// each word has to varry in length between 0-10 
// questions we need to answer 
//how do we build random words 
//how do we randomize the length of these words
// build a loop that keeps on generating words and adds them to an array and stops at N 

function radmomWords(number)
{ 
    var array = [];
    var j = 0;
    while (j < number) {
        var alphabet = "abcdefghijklmnopqrstuvwxyz";
        var newWord = "";
        var randomNumber = Math.floor((Math.random() * 10) + 1);
        for (var i = 0; i < randomNumber ; i++){
            var newLetter = alphabet.charAt(Math.floor(Math.random() * 27));
            newWord += newLetter;
        }
        j++;
        array.push(newWord);
    }
    return array;


}

for (var i = 0; i < 11 ; i++){
console.log(radmomWords(Math.floor((Math.random() * 10) + 1)));
}






