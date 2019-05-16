# This file serves as the interface for printing the prime multiplication table.
# Example use of this library:
#
# ruby print_table
# => returns a multiplication table of the first ten prime numbers.
#
# ruby print_table -n 23
# => returns a multiplication table of the first 23 prime numbers.
require_relative 'lib/prime_table'

# If user passes an argument of -n && second argument is a number
# call PrimeTable.print(ARGV[1])
# else PrimteTable.print() => return the first 10 prime numbers by default
if ARGV[0] == '-n' && ARGV[1].to_i > 0
  PrimeTable.print(ARGV[1])
elsif ARGV[0] != '-n'
  puts 'Looks like you passed a wrong argument!'
  puts 'To use PrintTable with an argument, use ruby print_table.rb -n 23.'
  puts 'This will print a multiplication table with the first 23 prime numbers.'
  puts 'Otherwise, passing no argument will print the first 10 prime numbers.'
else
  PrimeTable.print
end
