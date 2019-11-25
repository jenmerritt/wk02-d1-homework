require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports-team')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test

  def setup

    @team_name = "Edinburgh"
    @players = ["Jen", "Steve"]
    @coach = "Alex"
    @points = 0

  end

  def test_get_team_name
    team = SportsTeam.new(@team_name, @players, @coach, @points)
    assert_equal("Edinburgh", team.team_name())
  end

  def test_get_players
    team = SportsTeam.new(@team_name, @players, @coach, @points)
    assert_equal(["Jen", "Steve"], team.players())
  end

  def test_get_coach
    team = SportsTeam.new(@team_name, @players, @coach, @points)
    assert_equal("Alex", team.coach())
  end

  def test_set_coach
    team = SportsTeam.new(@team_name, @players, @coach, @points)
    team.coach = "John"
    assert_equal("John", team.coach())
  end

  def test_add_new_player
    team = SportsTeam.new(@team_name, @players, @coach, @points)
    team.add_new_player("Bob")
    assert_equal(3, @players.length)
  end

  def test_find_player_by_name
    team = SportsTeam.new(@team_name, @players, @coach, @points)
    assert_equal("Jen", team.find_player_by_name("Jen"))
  end

  def test_add_points_if_won
    team = SportsTeam.new(@team_name, @players, @coach, @points)
    assert_equal(1, team.won_or_lost("win"))
  end

  def test_add_points_if_lose
    team = SportsTeam.new(@team_name, @players, @coach, @points)
    assert_equal(0, team.won_or_lost("lose"))
  end

end
