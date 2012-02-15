class Game
  def initialize
    @count = 0
    @statuses = [
      [[0,0,1,1,0],[1,0,0,0,0],[0,1,1,0,0]],
      [[0,0,0,0,0],[1,0,0,0,0],[0,1,1,0,0]],
      [[0,0,0,0,0],[0,0,0,0,0],[0,1,1,0,0]],
      [[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]]
    ]
  end

  def status
    @statuses[@count % @statuses.length]
  end

  def step
    @count = @count + 1
  end
end
