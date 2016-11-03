// function that reverses a word 
// input would be a string and output would be a string 
// steps: start with the last letter which is index -1 in the word and print it and move to the left 
// to go back for each letter the index will be -1 

function reverse(str) {
	var newString = "";
	for (var i = str.length -1; i >=0; i--) {
		newString += str[i];
	}
	return newString
}

reverse('hello');