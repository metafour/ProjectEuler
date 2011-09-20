#!/usr/bin/env ruby

$letterValues = [1, "a", 2, "b", 3, "c", 4, "d", 5, "e", 6, "f", 7, "g", 8, "h", 9, "i", 10, "j", 11, "k", 12, "l", 13, "m", 14, "n", 15, "o", 16, "p", 17, "q", 18, "r", 19, "s", 20, "t", 21, "u", 22, "v", 23, "w", 24, "x", 25, "y", 26, "z"]

$letterValues = Hash[*$letterValues]

names_input = File.open(ARGV[0])
#names_output = File.open(ARGV[0] + "alpha", 'w')

def createArray(filename)
  filename.each { |line|
  line.chomp
  names = line.split(",")
  return names
  }
end

def splitArray(array)

letterValues = {
  "a" => 1,
  "b" => 2,
  "c" => 3,
  "d" => 4,
  "e" => 5,
  "f" => 6,
  "g" => 7,
  "h" => 8,
  "i" => 9,
  "j" => 10,
  "k" => 11,
  "l" => 12,
  "m" => 13,
  "n" => 14,
  "o" => 15,
  "p" => 16,
  "q" => 17,
  "r" => 18,
  "s" => 19,
  "t" => 20,
  "u" => 21,
  "v" => 22,
  "w" => 23,
  "x" => 24,
  "y" => 25,
  "z" => 26
}

  line = 1
  sum = 0

  array.each { |name|
    wordvalue = 0
    name = name.downcase.split("")
    name = name[1..-2]
    0.upto(name.size - 1) { |i|
      wordvalue += letterValues[name[i]]
    }

    sum += wordvalue * line

    line += 1

#    if name[0] == "a"
#      puts "#{line}: #{name} #{wordvalue}"
#    end
  }
  puts sum
end


names = createArray(names_input)

names = names.sort

splitArray(names)
