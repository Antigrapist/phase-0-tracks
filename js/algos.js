// Compare the first two words in the array
// Delete the shorter of the two words 
// Repeat until there is only one word left in the array

function find_longest_word(word_array) {

	while (word_array.length > 1) {
		if (word_array[0].length < word_array[1].length ) {
			word_array.splice(0, 1) ; 
		}
		else {
			word_array.splice(1, 1) ;}

	}
	return word_array ;
}


// Set a match variable to false 
// Compare a key in array one with every key in array two
// if I find a matching set of keys, check if the two values also match. If so set the match variable to true
// Repeat for every key in array one and then return the match variable.

function find_common_key_value_pair(object1, object2) {

var is_common_key_value_pair = false ;

for (var key in object1) {
	if (object2.hasOwnProperty(key) ){ 
		if object1[key] === object2[key]{
			is_common_key_value_pair = true;
		}

	} 
}
return is_common_key_value_pair;
}

// Make an empty string to hold a word
// Get a random number that is between 1 and 10 that will be the length of that word.
// Then generate a random letter and add it to the string. Repeat until the length of the string is equal to the desired length.
// Add the word to the end of an array. 
// Repeat until the array is long enough.

function generate_random_words(number_of_words) {
	var alphabet = "abcdefghijklmnopqurstuvwxyz";
	var array_of_random_words = [];
	for (var i = 0; i < number_of_words; i++) {
		var desired_random_word_length = Math.floor((Math.random() * 10) + 1);
		var random_word = "";
		for (var j=0; j < desired_random_word_length; j++){
			var random_charactor_index = Math.floor((Math.random()* 26));
			var letter = alphabet.substr(random_charactor_index, 1);
			random_word += letter;
		}
		array_of_random_words.push(random_word);
	}
	return array_of_random_words;
}






 // var words = ["rice","beans", "dinosaurj", "iuhesouhnifsnsiopfnsf", "d" , "a" , "cheese"] ;
 // find_longest_word(words) ;


var x = {name: "Steven", three: 3, age: 54, potato: "green"};
var y = {name: "Tamir", age: 55};

find_common_key_value_pair(x, y);




// var random_array = generate_random_words(10) ;
// console.log (random_array);

for (var k = 0; k < 10; k++) {
	var random_array = generate_random_words(3);
	longest_word = find_longest_word(random_array);
	console.log (longest_word);
}