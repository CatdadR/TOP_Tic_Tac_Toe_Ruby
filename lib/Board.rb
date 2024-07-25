class Board
  
  @@posistion = [1, 2, 3, 4, 5, 6, 7, 8, 9]      
  @@winCombinations = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]

  def initialize
    self.gameboard
    self.posistion 
    self.game_state
    self.winCombinations
  end

  def posistion
    @posistion = @@posistion
  end

  def winCombinations
    @winCombinations = @@winCombinations
  end

  def space_select(space, player)
    if @posistion[space.to_i - 1].is_a? Integer 
      @posistion[space.to_i - 1] = player 
    else
      puts "Space is already occupied please select another space"
      space_select(gets, player)
    end 
  end

  def gameboard
    puts " #{self.posistion[0]} | #{self.posistion[1]} | #{self.posistion[2]}" 
    puts "---+---+---"
    puts " #{self.posistion[3]} | #{self.posistion[4]} | #{self.posistion[5]}" 
    puts "---+---+---"
    puts " #{self.posistion[6]} | #{self.posistion[7]} | #{self.posistion[8]}" 
  end

  def game_state
    self.winCombinations.each do |combo|
      temp = []
      combo.each do |spot|
        temp << self.posistion[spot - 1]
      end
      if temp[0] == temp[1] && temp[1] == temp[2]  
        return temp[0]  
      end
    end
  end

end
    