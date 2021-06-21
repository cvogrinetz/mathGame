class Game 

  def initialize(p1, p2)
    @players = [p1, p2]
    @player_index = 0
    @current_player = players[player_index]
  end

  def change_player
    if current_player == player_index
      @current_player = players[1]
    else
      @current_player = 0 
    end
  end

  

end