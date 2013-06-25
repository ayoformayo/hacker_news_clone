require_relative 'sudoku_print'

# row coordinate logic
 


first_board_string = File.readlines('sample.unsolved.txt').first.chomp
POSSIBILITIES = (1..9).to_a

class Sudoku

  attr_reader :board_string

  include SudokuPrint

  def initialize(board_string)
    @board_string = board_string
    @initial_board = board_string.split("")
    # puts pretty_print
    # puts blank_board
    # sudoku_parse(@board_string)
    # print
  end
 
  def sudoku_parse(board_string)
    integer_array = []
    board_string.split(//).map do |x|
      if x == "0"
        integer_array.push(POSSIBILITIES)
      else 
        integer_array.push([x.to_i])
      end
    end
    @concatenated_array = []
    integer_array.each_slice(9) {|x| @concatenated_array.push(x)}
    @concatenated_array
  end





  def print
    @print_array = @concatenated_array.map do |x| 
      x.map { |cell| cell.is_a?(Array) && cell.length > 1 ? " " : cell}
    end
    puts sudoku_board
  end

  
end



game = Sudoku.new(first_board)
