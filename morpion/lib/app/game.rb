# Requiert les fichiers nécessaires pour la classe Game.
require_relative 'board'
require_relative 'player'

# La classe Game gère le déroulement du jeu.
class Game
  def initialize
    # Initialise le plateau de jeu et les joueurs.
    @board = Board.new
    @players = [Player.new('X'), Player.new('O')]
    @current_player_index = 0
  end

  # Méthode principale pour jouer au jeu.
  def play
    # Boucle infinie jusqu'à ce qu'il y ait un gagnant ou un match nul.
    loop do
      # Affiche le plateau de jeu.
      @board.display

      # Demande au joueur actuel de faire un mouvement.
      move = @players[@current_player_index].get_move

      # Vérifie si le mouvement est valide et l'effectue si c'est le cas.
      if @board.make_move(@players[@current_player_index].symbol, move)
        # Vérifie si le joueur actuel a gagné.
        if @board.check_winner(@players[@current_player_index].symbol)
          # Affiche le plateau de jeu.
          @board.display
          # Affiche un message de victoire.
          puts "#{@players[@current_player_index].name} (#{@players[@current_player_index].symbol}) wins!"
          # Termine la boucle et relance une nouvelle partie.
          Game.new
        # Vérifie si le plateau est plein (match nul).
        elsif @board.full?
          # Affiche le plateau de jeu.
          @board.display
          # Affiche un message de match nul.
          puts "It's a tie!"
          # Termine la boucle et le jeu.
          break
        end
        # Passe au joueur suivant.
        @current_player_index = (@current_player_index + 1) % 2
      else
        # Affiche un message d'erreur si le mouvement est invalide.
        puts "Invalid move. Try again."
      end
    end
  end
end
