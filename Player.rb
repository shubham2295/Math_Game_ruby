class Player
  
  LIFE = 3

  attr_accessor :life, :name

  def initialize(name)
    @life = LIFE
    @name = name
  end

  def update_player_life
    @life -= 1
  end

end