require_relative "lib/authenticator.rb"
require_relative "lib/word_counter.rb"

auth = Authenticator.new("nizar", "swordfish")

puts "Give me your credentials to log in."
puts "Username:"
username = gets.chomp

puts "Password:"
password = gets.chomp

if auth.verify?(username, password) == true
  puts "\nSuccess!"
  puts "\nWord Count"
  puts "Give me some text and I'll count the words."
  text = gets.chomp

  counter = WordCounter.new(text)
  puts "\nYour text has #{counter.word_count} words."
else
  puts "\nGet out of here!"
end