class Player
  attr_reader :symbol, :name

  def initialize(symbol)
    @symbol = symbol
    @name = get_name
  end

  def get_name
    puts "Enter the name for player #{@symbol}:"
    gets.chomp
  end

  def get_move
    puts "#{@name} (#{@symbol}), enter your move (e.g., A1):"
    gets.chomp.upcase
  end
end