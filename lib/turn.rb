require_relative 'display_board.rb'
require_relative 'is_valid_index.rb'
require_relative 'position_taken.rb'

def turn(input)
  loop do
    puts "Where would you like to go?"
    value = gets.split
    if valid_move?(board,input)
  end
end
