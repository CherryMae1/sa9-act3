class Team
  attr_accessor :name, :wins, :losses
  def initialize(name = "none", wins = 0, losses = 0)
    @name = name
    @wins = wins
    @losses = losses
  end

  def get_win_percentage
    wins = @wins.to_f
    wins/ (wins + @losses.to_f)
  end

  def print_standing
    win_percentage = get_win_percentage
    puts("Win percentage: %.2f" % win_percentage)
    if win_percentage >= 0.5
      puts("Congratulations, Team #{@name} has a winning average!")
    else
      puts("Team #{@name} has a losing average.")
    end
  end
end
