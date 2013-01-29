require_relative 'player'
require_relative 'die'
require_relative 'game_turn'

class Game

  attr_reader :title

  def initialize title
    @title = title
    @players = []
  end

  def add_player player
    @players.push player
  end

  def play
    puts "There are #{ @players.size } players in #{ @title }: "

    @players.each do |p|
      puts p
    end


    @players.each do |p|

      GameTurn.take_turn p

      puts p
    end

  end
end

if __FILE__ == $0

  player1 = Player.new("moe")
  player2 = Player.new("larry", 60)
  player3 = Player.new("curly", 125)

  knuckleheads = Game.new("Knuckleheads")
  knuckleheads.add_player(player1)
  knuckleheads.add_player(player2)
  knuckleheads.add_player(player3)
  knuckleheads.play

  p1 = Player.new "Alvim"
  p2 = Player.new "Joe", 200
  p3 = Player.new "Jim", 130

  game2 = Game.new "Another game"
  game2.add_player p1
  game2.add_player p2
  game2.add_player p3
  game2.play

end
