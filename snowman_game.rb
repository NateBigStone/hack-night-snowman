melt_array = []
a_guessed = []
File.open('snowman_image.txt').each do |line|
  melt_array << line
end

def print_snow(guesses, melt_array)
  (guesses*4).times do |i|
    puts melt_array[i]
  end
end

# if word_print.include?(letter)
#   remaining_guess += 1
#   print "You already used that letter, try again. you have #{remaining_guess} guesses remaining"
# end

random_words = ['winter','december','scarf','holiday','sled']
word = random_words.sample
word_print = []
remaining_guess = 5
word = word.chars
word.length.times do 
  word_print << '_'
end
puts " "
p word_print.join(' ')
while remaining_guess > 0
  if word == word_print
    p "You have won with #{remaining_guess} guesses remaining"
    break
  end
  puts ""
  line_num=0
  print_snow(remaining_guess, melt_array)

  puts 'Please guess a letter:'

  word_print.join(' ')
  letter = gets.chomp.downcase
  if !word.include?(letter)
    remaining_guess -= 1
    print "Sorry that letter is not included, try again. You have #{remaining_guess} guesses left" 
  else 
    word.each_with_index do |l, index|
      word_print[index] = l if l == letter
    end
  end
  puts " "
  p word_print.join(' ')
end
print "You are out of guesses fool!" if remaining_guess == 0

