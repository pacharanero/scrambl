 #!/usr/bin/env ruby

list_of_english_words = File.readlines('./words.txt') # load in the list of words
list_of_english_words.each { |word| word.chomp! } # strip all the \r\n\ newline characters

test_word_array = ARGF.argv[0].chars # assign test_word from command line argument and split into characters

# initialize an array to hold all the words generated, and one for all the 'good' (true English) words we find
good_found_words = []
all_found_words = []

# discard all words in list_of_words greater than length of test_word (eg you won't find the word 'ready' in 'read')
list_of_english_words.delete_if { |word| word.length > test_word_array.size }

# iterate through to create an array with every possible permutation of the letters in the test_word
test_word_array.each_with_index do |letter, index|
  test_word_array.permutation(index + 1).each_with_index { |word, index| all_found_words << word.join } #makes a huge array of groups of letters
end

#look for the intersection between the the all_found_words array and the list_of_english_words array
good_found_words = all_found_words & list_of_english_words

# pretty-print the list of 'good' words (which may include some odd ones, depending on the the list used)
good_found_words.each { |word| print word + ", "}