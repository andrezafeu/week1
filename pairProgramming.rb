class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

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
		language.age += 1
		language
	end

# p aged_languages

array_printer(aged_languages)


def languageSorting(array)
	array.sort_by{|array|array.age}
end

# aux=languageSorting(aged_languages)
# array_printer(aux)

def deleteitem (array)
		array.delete_if {|array| array.name =="Java"} 
end

# aux1=deleteitem (aux)
#array_printer (aux1)

def arrayshuffle (array)
   array.shuffle 
end


# shuffled = arrayshuffle (aux1)
#array_printer (shuffled)


def keepitem (array)
		array.keep_if {|array| array.age > 5} 
end

#keeped = keepitem (shuffled)
#array_printer (keeped)

def reversesorting (array)
   array.reverse
end

# reversearray = reversesorting (aux)
# array_printer (reversearray)

def lengtharray (array)
	array.length
end

# largoarray = lengtharray (reversearray)
# puts largoarray