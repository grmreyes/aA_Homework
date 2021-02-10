class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over
      self.take_turn
    end
    self.game_over_message
    self.reset_game
  end

  def take_turn
    self.show_sequence
    self.require_sequence
    if !self.game_over
      round_success_message
      @sequence_length = 2
    end
  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence
    seq.each do |color|
      input = gets.chomp
      unless input == color
        self.game_over = true
        break
      end
    end
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message

  end

  def game_over_message
    p "game over"
  end

  def reset_game
    self.sequence_length = 1
    self.seq = []
    self.game_over = false
  end
end


# d = Simon.new
# d.play