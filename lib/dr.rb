class DR
  attr_reader :red_die, :white_die, :total
  
  def initialize
    @red_die = rand(6) + 1
    @white_die = rand(6) + 1
    @total = @red_die + @white_die
  end

end
