#!/usr/bin/env ruby

n = 1
max = maxcounter = 0

n.upto(1000000) do
    i = n
    counter = 0
    begin
      i.even? ? i = i/2 : i = 3*i + 1
      counter += 1
    end while i != 1
#    puts "n = #{n} counter = #{counter}"
    if counter > maxcounter
      max = n
      maxcounter = counter
#      puts "max = #{max} n = #{n}"
    end
    n += 1
end

puts max
