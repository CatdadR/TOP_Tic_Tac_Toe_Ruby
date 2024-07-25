class Player 
  attr_accessor :name, :player_symbol, :wins, :losses
  
  def initialize(n, s)
    self.name = n
    self.player_symbol = s 
    @wins = 0
    @losses = 0   
  end

  def playername(name)
    self.name = name
  end

  def to_s
    "#{self.name}"
  end

  def symbol(symbol)
    self.player_symbol = symbol
  end
end