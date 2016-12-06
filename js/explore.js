// have a counter that is equal to the length of the string
// then take the letter at the counter's position and add it to a new variable
// then reduce the counter by one and repeat until the counter is 0
// 
// 
// 



function reverse(input) {

var original_string = input;
var final_string = "";

for (var i = original_string.length; i > -1; i-=1) {
final_string += original_string.charAt(i);
} 

return (final_string);

}

//var to_be_reversed = prompt("please input a string to reverse") ; 
//prompt works in repl but not in the console so let's just set the word manually
var to_be_reversed = "magnetic";

var output = reverse(to_be_reversed);

if (output.length > 3) {
console.log(output);
}