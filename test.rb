melt_array = []
File.open('snowman_image.txt').each do |line|
  new_array << line
end
def print_snow(guesses, new_array)
  (guesses*4).times do |i|
    puts melt_array[i]
  end
end
print_snow(5, new_array)

