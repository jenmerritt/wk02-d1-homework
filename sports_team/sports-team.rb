
class SportsTeam

  attr_reader :team_name, :players
  attr_accessor :coach

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  def add_new_player(new_player)
    @players << new_player
  end

  def find_player_by_name(name)
    for player in @players
      if player == name
        player_found = player
      end
    end
      return player_found
  end

  def won_or_lost(result)
    if result == "win"
      @points += 1
    elsif result == "lose"
      @points = @points
    end
  end

# replaced by refactoring to use attr_reader and attr_accessor

  # def get_team_name
  #   return @team_name
  # end

  # def get_players
  #   return @players
  # end
  #
  # def get_coach
  #   return @coach
  # end
  #
  # def set_coach(new_name)
  #   @coach = new_name
  # end

end
