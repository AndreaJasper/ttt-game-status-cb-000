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
  empty_board = board.all? {|space| space == " "}
  draw = board.all? {|token| token == "X" || token == "O"}
  WIN_COMBINATIONS.any? do |win_combo|
    if win_combo.select? {|index| board[index]}
      return win_combo
    else
      return false
    end
end
