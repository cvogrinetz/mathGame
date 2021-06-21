class Game 

  def initialize(p1, p2)
    @players = [p1, p2]
    @index = 0
    @current_player = @players[@index]
  end

  def change_player
    if @current_player == players[player_index]
      @current_player = players[1]
    else
      @current_player = players[0] 
    end
  end


end


