# family_members_at_thanksgiving = ['Jared Webb', 'Frank Bent', 'Brynn Bent']
# family_members_food_brought = {
#   jared: 'pumpkin pie',
#   frank: 'turkey',
#   brynn: 'stuffing' 
# }
# family_members_food_brought.each do |name, food|
#   puts "#{name} brought #{food} to thanksgiving this year!"
# end
# puts family_members_at_thanksgiving
# family_members_at_thanksgiving.map! do |name|
#   name.downcase
# end
# puts family_members_at_thanksgiving
integers = [1,2,2,3,4,5,6,7,7,8,9,0]
letters = {
    a: 1,
    b: 2,
    c: 3,
    d: 4
}
# integers.delete_if {|number| number < 4}
# puts integers
# letters.delete_if {|letter, number| number < 2 }
# puts letters
# integers.keep_if{|number| number == 3}
# puts integers
# letters.keep_if{|letter, number| number > 3}
# puts letters
# integers.select{|number| number == 3}
# puts integers
# letters.select{|letter, number| number > 3}
# puts letters
integers_variable = integers.drop_while {|number| number < 6}
puts integers_variable
letters_variable = letters.drop_while {|letter, number| number < 6}
puts letters_variable