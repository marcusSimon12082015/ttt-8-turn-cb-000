require_relative 'display_board.rb'
require_relative 'is_valid_index.rb'
require_relative 'position_taken.rb'

def turn(board,input)

end

def valid_move?(board,index)
  is_valid_index(index) && !position_taken?(board,index)
end