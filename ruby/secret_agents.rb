# Psudeo-code Algorithm

# def encrypt(string)
# set a counter to zero
# while the counter is less than the length of string
#   find the letter in string at index counter
#   if the letter is z, set letter to a
#   if the letter is a space, do nothing
#   otherwise, call .next on letter
#   
# end

# def decrypt(string)
# cache alphabet into a string
# set a counter to 0
# while the counter is less than string length
#    if the letter is " ", do nothing
#    otherwise
#      find the index of letter in alphabet
#      set letter to index - 1 of alphabet
# end       

def encrypt(string)
  counter = 0
  while counter < string.length
    if string[counter] == "z"
      string[counter] = "a"
    elsif string[counter] == " "
      string[counter]
    else
      string[counter] = string[counter].next
    end
    counter += 1
  end
  string
end

def decrypt(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  counter = 0
  while counter < string.length
    if string[counter] == " "
      string[counter]
    else
      index = alphabet.index(string[counter])
      string[counter] = alphabet[index-1]
    end
    counter += 1
  end
  string
end

# puts encrypt("abc")
# puts encrypt("zed")
# puts decrypt("bcd")
# puts decrypt("afe")

# puts decrypt(encrypt("swordfish"))

# Because both decrypt and encrypt have global scope, they are
# available everywhere, including within a method argument


# Asks a secret agent (the user) whether they would like to decrypt or encrypt a password
# Asks them for the password
# Conducts the requested operation, prints the result to the screen, and exits
done = false
until done
  puts "Encrypt or decrypt a message?"
  answer = gets.chomp.downcase
  if answer == "encrypt" || answer == "decrypt"
    done = true
  else 
    puts "ERROR: Invalid input, try again"
  end
end

puts "What's the password?"
password = gets.chomp.downcase

if answer == "encrypt"
  puts encrypt(password)
else
  puts decrypt(password)
end