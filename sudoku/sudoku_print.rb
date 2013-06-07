
module SudokuPrint
  
  def pretty_print

    "
       _____           _       _          
      / ____|         | |     | |         
     | (___  _   _  __| | ___ | | ___   _ 
      \\___ \\| | | |/ _` |/ _ \\| |/ / | | |
      ____) | |_| | (_| | (_) |   <| |_| |
     |_____/ \\__,_|\\__,_|\\___/|_|\\_\\__,_|
    "
  end

  def sudoku_board 

    "
    +---+---+---+---+---+---+---+---+---+
    | #{@print_array[0][0]} | #{@print_array[0][1]} | #{@print_array[0][2]} | #{@print_array[0][3]} | #{@print_array[0][4]} | #{@print_array[0][5]} | #{@print_array[0][6]} | #{@print_array[0][7]} | #{@print_array[0][8]} | 
    +---+---+---+---+----+---+---+--+---+
    | #{@print_array[1][0]} | #{@print_array[1][1]} | #{@print_array[1][2]} | #{@print_array[1][3]} | #{@print_array[1][4]} | #{@print_array[1][5]} | #{@print_array[1][6]} | #{@print_array[1][7]} | #{@print_array[1][8]} | 
    +---+---+---+---+----+---+---+--+---+
    | #{@print_array[2][0]} | #{@print_array[2][1]} | #{@print_array[2][2]} | #{@print_array[2][3]} | #{@print_array[2][4]} | #{@print_array[2][5]} | #{@print_array[2][6]} | #{@print_array[2][7]} | #{@print_array[2][8]} | 
    +---+---+---+---+----+---+---+--+---+
    | #{@print_array[3][0]} | #{@print_array[3][1]} | #{@print_array[3][2]} | #{@print_array[3][3]} | #{@print_array[3][4]} | #{@print_array[3][5]} | #{@print_array[3][6]} | #{@print_array[3][7]} | #{@print_array[3][8]} | 
    +---+---+---+---+----+---+---+--+---+
    | #{@print_array[4][0]} | #{@print_array[4][1]} | #{@print_array[4][2]} | #{@print_array[4][3]} | #{@print_array[4][4]} | #{@print_array[4][5]} | #{@print_array[4][6]} | #{@print_array[4][7]} | #{@print_array[4][8]} | 
    +---+---+---+---+----+---+---+--+---+
    | #{@print_array[5][0]} | #{@print_array[5][1]} | #{@print_array[5][2]} | #{@print_array[5][3]} | #{@print_array[5][4]} | #{@print_array[5][5]} | #{@print_array[5][6]} | #{@print_array[5][7]} | #{@print_array[5][8]} | 
    +---+---+---+---+----+---+---+--+---+
    | #{@print_array[6][0]} | #{@print_array[6][1]} | #{@print_array[6][2]} | #{@print_array[6][3]} | #{@print_array[6][4]} | #{@print_array[6][5]} | #{@print_array[6][6]} | #{@print_array[6][7]} | #{@print_array[6][8]} | 
    +---+---+---+---+----+---+---+--+---+
    | #{@print_array[7][0]} | #{@print_array[7][1]} | #{@print_array[7][2]} | #{@print_array[7][3]} | #{@print_array[7][4]} | #{@print_array[7][5]} | #{@print_array[7][6]} | #{@print_array[7][7]} | #{@print_array[7][8]} | 
    +---+---+---+---+----+---+---+--+---+
    | #{@print_array[8][0]} | #{@print_array[8][1]} | #{@print_array[8][2]} | #{@print_array[8][3]} | #{@print_array[8][4]} | #{@print_array[8][5]} | #{@print_array[8][6]} | #{@print_array[8][7]} | #{@print_array[8][8]} | 
    +---+---+---+---+---+---+---+---+---+
     
    "
  end

  def blank_board

    "

    +---+---+---+---+---+---+---+---+---+
    |   |   |   |   |   |   |   |   |   | 
    +---+---+---+---+---+---+---+---+---+
    |   |   |   |   |   |   |   |   |   | 
    +---+---+---+---+---+---+---+---+---+
    |   |   |   |   |   |   |   |   |   | 
    +---+---+---+---+---+---+---+---+---+
    |   |   |   |   |   |   |   |   |   | 
    +---+---+---+---+---+---+---+---+---+
    |   |   |   |   |   |   |   |   |   | 
    +---+---+---+---+---+---+---+---+---+
    |   |   |   |   |   |   |   |   |   | 
    +---+---+---+---+---+---+---+---+---+
    |   |   |   |   |   |   |   |   |   | 
    +---+---+---+---+---+---+---+---+---+
    |   |   |   |   |   |   |   |   |   | 
    +---+---+---+---+---+---+---+---+---+
    |   |   |   |   |   |   |   |   |   | 
    +---+---+---+---+---+---+---+---+---+

    "
  end

  solved = "you know we're fuckin sweet."
end

