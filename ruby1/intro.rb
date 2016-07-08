# Introduction Ruby *
# reading Ruby *
# irb *
# runinng Ruby code *
# RubyGems *
# Instance Methods vs Class Methods *
# Strings, Symbols, Numbers, Operations *
# Basic data structures (Arrays, Hashes) *
# Ejercicio *

# naming a file
#this_is_a_snake_cased_file.rb

# Assignning a varible
#forty_two = 42

# Defining a method
#def this_is_a_great_method

#end

# Class Naming
#class MyFirstClass

#end

#FOUR = 'four'
#FIVE = 5

# Multi-line
#a = [1, 2, 3]
#a << 4
#binding.pry
#puts a

#[1, 2, 3].each { |i| # do something }

# Basic data structures
# Arrays, Hashes

#[1, 2, 3, 4, 5]

#{:dog => 'barks'}

#{:dog => 'barks', :cat => 'meows', :pig => 'oinks'}

# Sumar 2 strings, cuando se concatena debe retornar su nombre y apellido
# como su nombre completo en un string.

# Escribir un programa que use un hash para guardar una lista de nombres
# de peliculas con el año que salieron. Use puts para hacer que su
# programa imprima el año de cada pelicula, ej:




# ask the user for two numbers
# ask the user an operation to perform
# perform the operation on the two numbers
# output the result

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Substracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to calculator! Enter your name:")

name = ''
loop do
  name = Kernel.gets.chomp

  if name.empty?
    prompt("Make sure to use a valid name")
  else
    break
  end
end

prompt("Hi #{name}")

loop do
  number1 = ''
  loop do
    prompt("What's the first number")
    number1 = Kernel.gets.chomp

    if valid_number?(number1)
      break
    else
      prompt("Hummm... that doesn't look like a valid number")
    end
  end

  number2 = ''
  loop do
    prompt("What's the second number")
    number2 = Kernel.gets.chomp

    if valid_number?(number2)
      break
    else
      prompt("Hummm... that doesn't look like a valid number")
    end
  end

  operator_prompt = <<-MSG
    What kind of operation would you like to perform?
    1) add
    2) substract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end


  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again")
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the calculator. Good bye!")










