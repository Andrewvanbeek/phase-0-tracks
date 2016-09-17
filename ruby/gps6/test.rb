puts "What is your name?"
text = gets.chomp 
words = text.split
p words
frequencies = Hash.new(7)
p frequencies
words.each {|word| frequencies[word] += 1}
p frequencies
frequencies = frequencies.sort_by do |frequency, count|
    count
end
# frequencies.reverse!

p frequencies

