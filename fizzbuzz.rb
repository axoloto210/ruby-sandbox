#  frozen_string_literal: true

def fizz_buzz(num)
  if (num % 15).zero? then 'FizzBuzz'
  elsif (num % 3).zero? then 'Fizz'
  elsif (num % 5).zero? then 'buzz'
  else num
  end
end

(1..99).each do |num|
  puts fizz_buzz(num)
end
