# La classe Player gère les informations des joueurs.
class Player
  attr_reader :symbol, :name

  def initialize(symbol)
    # Initialise le symbole du joueur ('X' ou 'O').
    @symbol = symbol
    # Demande le prénom du joueur.
    @name = get_name
  end

  # Demande le prénom du joueur.
  def get_name
    puts "Enter the name for player #{@symbol}:"
    gets.chomp
  end

  # Demande au joueur de faire un mouvement.
  def get_move
    puts "#{@name} (#{@symbol}), enter your move (e.g., A1):"
    gets.chomp.upcase
  end
end
