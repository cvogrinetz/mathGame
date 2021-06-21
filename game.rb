require './player'

class Game 

  attr_reader :players, :current_player, :current_score

  def initialize(p1, p2)
    @players = [p1, p2]
    @index = 0
    @current_player = @players[@index] 
  end

  def change_player
    if @current_player == @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0] 
    end
  end

  def lose_life
    @current_player.life -= 1
    puts "#{@current_player.name}! Cmon you can do better!"
    if @current_player.life == 0
      puts "#{@current_player.name}, you lose!"
      puts "----GAME OVER----"
    end
  end

  def current_score
    "Life Remaining ==> P1: #{@players[0].life}/3  P2:#{@players[1].life}/3 "
  end

end