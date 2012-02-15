require 'lib/game_of_life'


describe "Game of Live" do
  before(:each) do
    @game = double("game")
    @gol = GameOfLife.new @game, 'O', '*'
  end

  it "should display dead characters" do
    @game.stub(:status => [[0,0,0,0,0],[0,0,0,0,0]])
    @gol.visual.should eq "OOOOO\nOOOOO\n"
  end

  it "should display live characters" do
    @game.stub(:status => [[1,1,1,1],[1,1,1,1],[1,1,1,1]])
    @gol.visual.should eq "****\n****\n****\n"
  end

  it "should display map status" do
    @game.stub(:status => [[1,0,1],[1,1,0],[0,0,0]])
    @gol.visual.should eq "*O*\n**O\nOOO\n"
  end
end
