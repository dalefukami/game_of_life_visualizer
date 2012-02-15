class GameOfLife
  def initialize game, dead_char, live_char
    @game = game
    @dead_char = dead_char
    @live_char = live_char
  end

  def visual
    status = @game.status
    visual_string = ""
    status.each_index do |index|
      row = status[index]
      row.each do |value|
         visual_string << ((value === 0) ? @dead_char : @live_char)
      end
      visual_string << "\n"
    end

    visual_string
  end
end
