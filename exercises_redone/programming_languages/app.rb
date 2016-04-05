  require_relative "lib/collections.rb"

  ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

  array_of_languages = [ruby, python, javascript, go, rust, swift, java]

def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end

# array_printer(array_of_languages)

aged_languages = array_of_languages.map do |language|
	language.age = language.age + 1
	language
end

# puts "The programming languages aged one year are: "
# array_printer(aged_languages)

def sort_languages (array)
	array.sort_by { |array| array.age}
end

sorted_languages = sort_languages(array_of_languages)
# array_printer(sorted_languages)

def delete_language (array)
	array.delete_if { |language| language.name == "Java" }
end

 array_deleted = delete_language(array_of_languages)
 # array_printer(array_deleted)

 def shuffle_array(array)
 	array.shuffle
 end

 array_shuffled = shuffle_array(sorted_languages)
 array_printer(array_shuffled)