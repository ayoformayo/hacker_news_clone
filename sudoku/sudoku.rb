require_relative 'sudoku_print'
# require_relative 'sample.unsolved.txt'
#require_relative 'sweet_ass_logic'

p __FILE__
p File.dirname(__FILE__)

file = File.expand_path('../sample.unsolved.txt', __FILE__)

POSSIBILITIES = (1..9).to_a

class Sudoku

  attr_reader :board_string

  include SudokuPrint

  def initialize(board_string)
    @board_string = board_string
    puts pretty_print
    puts blank_board
    sudoku_parse
    print
  end
  

  def sudoku_parse
    integer_array = []
    board_string.split(//).map do |x|
      if x == "0"
        integer_array.push(POSSIBILITIES)
      else 
        integer_array.push(x.to_i)
      end
    end
    @concatenated_array = []
    integer_array.each_slice(9) {|x| @concatenated_array.push(x)}
    @concatenated_array

  end

  def print
    @print_array = @concatenated_array.map do |x| 
      x.map { |cell| cell.is_a?(Array) ? " " : cell }
    end
    puts sudoku_board
  end

  # def play!(parsed_file_which_is_a_3d_array)
  #   puts pretty_print
  #   p blank_board
  #   logic(parsed_file_which_is_a_3d_array)
  # end

  # def solved?
  #   p solved!
  #end


  # def logic?(parsed_file_which_is_a_3d_array)
  #     #all of our sweet ass logic
  #     p board
  # end
end


board_string = File.readlines('sample.unsolved.txt').first.chomp
game = Sudoku.new(board_string)
