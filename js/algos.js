
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
var words = ["rice","beans", "dinosaurj", "iuhesouhnifsnsiopfnsf", "d" , "a" , "cheese"] ;
find_longest_word(words) ;