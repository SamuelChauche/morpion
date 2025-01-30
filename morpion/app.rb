# Requiert les fichiers nécessaires pour lancer le jeu.
require_relative 'lib/app/game'
require_relative 'lib/app/player'

# Demande les prénoms des joueurs une seule fois.
player1 = Player.new('X')
player2 = Player.new('O')

# Crée une nouvelle instance de la classe Game avec les joueurs.
game = Game.new([player1, player2])

# Boucle pour jouer plusieurs parties.
loop do
  game.play
  puts "Do you want to play again? (y/n)"
  answer = gets.chomp.downcase
  break unless answer == 'y'
  # Réinitialise le plateau de jeu pour une nouvelle partie.
  game = Game.new([player1, player2])
end
