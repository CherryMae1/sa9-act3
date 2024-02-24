require 'starter3'

RSpec.describe Team do
  describe "get_win_percentage" do
    it "correctly returns value of wins divides wins plus losses" do
      team = Team.new("Team 1", 12, 4)
      expect(team.get_win_percentage).to eq(0.75)
    end

    it "correctly return value if there are 0 wins" do
      team = Team.new("Team 1", 0, 7)
      expect(team.get_win_percentage).to eq(0)
    end

    it "correctly return value if there are 0 losses" do
      team = Team.new("Team 1", 20, 0)
      expect(team.get_win_percentage).to eq(1)
    end
  end

  describe "print_standing" do
    it "prints congratulations if winning average is higher that 0.5" do
      team = Team.new("2", 20, 5)
      expect { team.print_standing }.to output("Win percentage: 0.80\nCongratulations, Team 2 has a winning average!\n").to_stdout
    end

    it "prints has a losing average if percentage less that 0.5" do
      team = Team.new("2", 5, 15)
      expect { team.print_standing }.to output("Win percentage: 0.25\nTeam 2 has a losing average.\n").to_stdout
    end
  end
end
