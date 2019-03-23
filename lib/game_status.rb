# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

#Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

#defines if there is a winning combination, draw, or if the board is empty
def won?(board)
  empty_board = board.all? {|  | space == " "}
  draw = board.all? {|token| token == "X" || token == "O"}
  WIN_COMBINATIONS.any? do |win_combination|
    if win_combination.any?{|index| board[index] == "X"} || win_combination.all?{|index| board[index] == "O"}
     return win_combination
    else empty_board || draw
     return false
     end
   end
 end
#determines if board if full
def full?(board)
  board.all?{|space| space == "X" || space == "O"}
end

#determines if there is a draw
def draw?(board)
  !won?(board) && full?(board)
end
