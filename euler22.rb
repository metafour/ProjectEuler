#!/usr/bin/env ruby

names_input = File.open(ARGV[0])

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

  }
  puts sum
end


names = createArray(names_input)

names = names.sort

splitArray(names)
