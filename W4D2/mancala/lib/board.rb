class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14){Array.new}
    place_stones(@cups)
  end

  def place_stones(cups)
    # helper method to #initialize every non-store cup with four stones each
    cups.each_with_index do |cup,i| 
      if i!=6 && i!=13
        4.times do
          cup << :stone
        end
      end
    end
  end

  def valid_move?(start_pos)
    # start_pos -= 1 if start_pos >=0 && start_pos < 7
    if start_pos < 0 || start_pos > 13
      raise "Invalid starting cup"
    end
    if @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
