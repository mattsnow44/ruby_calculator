require "pry"
require "colorize"

puts "Welcome to the ruby calculator!"

def menu
  puts "What is the first number?"
  print "> "
  fir_num = gets.to_f
  puts "What is the operator?"
  print "> "
  operator = gets.strip
  puts "What is the second number?"
  print "> "
  sec_num = gets.to_f
  case operator
  when "+"
    add(fir_num, sec_num)
  when "-"
    subtract(fir_num, sec_num)
  when "*"
    multiply(fir_num, sec_num)
  when "/"
    divide(fir_num, sec_num)
  else
    puts "Invalid Operator"
    menu
  end
  continue
end

def add(num_1, num_2)
  print "The result of #{num_1} + #{num_2} is: "
  puts num_1 + num_2
end

def subtract(num_1, num_2)
  print "The result of #{num_1} - #{num_2} is: "
  puts num_1 - num_2
end

def multiply(num_1, num_2)
  print "The result of #{num_1} * #{num_2} is: "
  puts num_1 * num_2
end

def divide(num_1, num_2)
  print "The result of #{num_1} / #{num_2} is: "
  puts num_1 / num_2
end

def continue
  puts "Got more math to do? <Y/N>"
  print "> "
  cont = gets.strip
  menu unless cont == "N" || cont == "n"
end

menu
