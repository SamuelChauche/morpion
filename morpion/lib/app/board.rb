# La classe Board gère le plateau de jeu du morpion.
class Board
  def initialize
    # Initialise le plateau de jeu avec des cases vides.
    @board = {
      'A1' => ' ', 'B1' => ' ', 'C1' => ' ',
      'A2' => ' ', 'B2' => ' ', 'C2' => ' ',
      'A3' => ' ', 'B3' => ' ', 'C3' => ' '
    }
  end

  # Affiche le plateau de jeu.
  def display
    puts "  A   B   C"
    puts "1 #{@board['A1']} | #{@board['B1']} | #{@board['C1']}"
    puts "  ---------"
    puts "2 #{@board['A2']} | #{@board['B2']} | #{@board['C2']}"
    puts "  ---------"
    puts "3 #{@board['A3']} | #{@board['B3']} | #{@board['C3']}"
  end

  # Permet à un joueur de faire un mouvement sur le plateau.
  def make_move(player, move)
    if @board[move] == ' '
      @board[move] = player
      true
    else
      false
    end
  end

  # Vérifie si un joueur a gagné.
  def check_winner(player)
    winning_combinations = [
      ['A1', 'B1', 'C1'], ['A2', 'B2', 'C2'], ['A3', 'B3', 'C3'],
      ['A1', 'A2', 'A3'], ['B1', 'B2', 'B3'], ['C1', 'C2', 'C3'],
      ['A1', 'B2', 'C3'], ['C1', 'B2', 'A3']
    ]

    winning_combinations.any? do |combination|
      combination.all? { |cell| @board[cell] == player }
    end
  end

  # Vérifie si le plateau est plein.
  def full?
    @board.values.all? { |cell| cell != ' ' }
  end
end
