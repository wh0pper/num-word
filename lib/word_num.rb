#!/usr/bin/env ruby

class Word_num
  def initialize(number)
    @num = number
  end
  def convert

    num_lib = { 0=> "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "forty", 50=> "fifty", 60=> "sixty", 70=> "seventy", 80=> "eighty", 90=> "ninety" }

    if @num < 20
      return num_lib.fetch(@num)
    end

    if @num < 100
      tens_place = (@num/10)*10
      ones_place = @num - tens_place
      return num_lib.fetch(tens_place) + " " + num_lib.fetch(ones_place)
    end

    if @num < 1000
      hundreds_place = (@num/100)
      # tens = (Word_num.new(@num%100).convert)
      return (num_lib.fetch(hundreds_place) + " hundred ") + (Word_num.new(@num%100).convert)
    end

    if @num < 1000000
      thousands_place = @num/1000
      return (Word_num.new(thousands_place).convert + " thousand ") + (Word_num.new(@num%1000).convert)
    end

    if @num < 1000000000
      millions = @num/1000000
      return (Word_num.new(millions).convert + " million ") + (Word_num.new(@num%1000000).convert)
    end

    if @num < 1000000000000
      billions = @num/1000000000
      return (Word_num.new(billions).convert + " billion ") + (Word_num.new(@num%1000000000).convert)
    end

  end
end

puts 'give me a number'
name = gets.chomp
num = Word_num.new(name.to_i)
puts num.convert()
