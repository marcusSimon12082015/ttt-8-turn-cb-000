require_relative 'display_board.rb'
require_relative 'is_valid_index.rb'
require_relative 'position_taken.rb'

def turn(board,input)
  puts "What is your move?"
	index = gets.strip.to_i
	valid = nil
	loop do
		if valid_move?(board,index)
			board[index-1] = "X"
			display_board(board)
			valid = true
		else
			puts "What is your move?"
			index = gets.strip.to_i
		end
		if valid == true
			break
		end
	end	
end

def valid_move?(board,index)
  is_valid_index(index) && !position_taken?(board,index)
end

def move(board,index,token="X")
  board[index - 1] = token
end
