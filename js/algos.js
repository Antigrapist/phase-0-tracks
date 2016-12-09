
function find_longest_word(word_array) {

	while (word_array.length > 1) {
		if (word_array[0].length < word_array[1].length ) {
			word_array.shift ; 
		}
		else {
			word_array.splice(1, 1) ;}

	}
	return word_array ;
}


// function find_common_key_value_pair(object1, object2) {

// var is_common_key_value_pair = false ;

// for (var key in object1) {
// 	if (object2.hasOwnProperty(key) ){ 
// 		if object1(key) == object2(key){
// 			is_common_key_value_pair = true;
// 		}

// 	} 
// }
// return is_common_key_value_pair;
// }


function generate_random_words(number_of_words) {
	var alphabet = "abcdefghijklmnopqurstuvwxyz";
	var array_of_random_words = [];
	for (var i = 0; i < number_of_words; i++) {
		var random_word_length = Math.floor((Math.random() * 10) + 1);
		var random_word = "";
		for (var j=0; j < random_word_length; j++){
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




var random_array = generate_random_words(10) ;

console.log (random_array);