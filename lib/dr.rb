class DR
  attr_reader :red_die, :white_die, :total
  
  def initialize
    @red_die = rand(6) + 1
    @white_die = rand(6) + 1
    @total = @red_die + @white_die
  end

  def cower?
    if @red_die == @white_die
      return true
    else
      return false
    end
  end

  def crit?
    if @red_die + @white_die == 2
      return true
    else
      return false
    end
  end

  def tell
    puts "#{@total} [\033[31m#{@red_die}\033[0m,#{@white_die}\033[0m]"
  end

end
