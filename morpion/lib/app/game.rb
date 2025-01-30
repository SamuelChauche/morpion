require 'player'
require 'board'


class Game
  def initialize
    @board = Board.new
    @players = [Player.new('❌'), Player.new('⭕')]
    @current_player_index = 0
  end

  def play
    loop do
      @board.display
      move = @players[@current_player_index].get_move
      if @board.make_move(@players[@current_player_index].symbol, move)
        if @board.check_winner(@players[@current_player_index].symbol)
          @board.display
          puts "#{@players[@current_player_index].name} (#{@players[@current_player_index].symbol}) wins!"
          break
        elsif @board.full?
          @board.display
          puts "It's a tie!"
          break
        end
        @current_player_index = (@current_player_index + 1) % 2
      else
        puts "Invalid move. Try again."
      end
    end
  end
end