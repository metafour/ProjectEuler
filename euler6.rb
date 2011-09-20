#!/usr/bin/env ruby

sumSquares = squaresSum = 0
n = 1

1.upto(100) do
  sumSquares += n**2
  n += 1
end

puts sumSquares

n = 100

squaresSum = n*(n+1)/2

squaresSum = squaresSum**2

puts squaresSum

puts squaresSum - sumSquares
