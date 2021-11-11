# ***First character of a variable name must be a lowercase letter or an underscore***
class Player

  attr_accessor :player_name
  attr_reader :player_health

  # Overriding setter method for player_name
  def player_name=(new_name)
    @player_name = new_name.capitalize
  end

  def score
    @player_name.length * @player_health
  end

  def initialize(name, health=0)
    @player_name = name
    @player_health = health
  end

  def blam
    puts("#{@player_name} got blammed!")
  end

  def w00t
    puts("#{@player_name} got w00ted!")
  end

  def to_s
    "Player Name: #{@player_name} \nPlayer Health: #{@player_health} \nPlayer Score: #{score}"
  end
end

player1 = Player.new('larry', 60)
player2 = Player.new('curly', 20)
player3 = Player.new('moe', 100)

puts player1.player_name
puts player1.player_health
puts player3.inspect
puts player1.score
player1.player_name = "lawrence"
puts player1
