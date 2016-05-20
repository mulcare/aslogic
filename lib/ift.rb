require './dr.rb'

class IFT
  attr_reader :ift
  
  def initialize
    fp = [1, 2, 4, 6, 8, 12, 16, 20, 24, 30, 36]
    @ift = [
      ["1KIA", "2KIA", "2KIA", "3KIA", "3KIA,", "3KIA", "4KIA", "4KIA", "5KIA", "6KIA", "7KIA"],
      ["K/1", "1KIA", "1KIA", "2KIA", "2KIA", "2KIA", "3KIA", "3KIA", "4KIA", "5KIA", "6KIA"],
      ["1MC", "K/1", "K/2", "1KIA", "1KIA", "1KIA", "2KIA", "2KIA", "3KIA", "4KIA", "5KIA", "6KIA"],
      ["1MC", "1MC", "2MC", "K/2", "K/2", "K/3", "1KIA", "1KIA", "2KIA", "2KIA", "3KIA", "4KIA", "5KIA"],
      ["NMC", "1MC", "1MC", "2MC", "2MC", "3MC", "K/3", "K/4", "1KIA", "2KIA", "3KIA", "4KIA"],
      ["PTC", "NMC", "1MC", "1MC", "2MC", "2MC", "3MC", "4MC", "K/4", "1KIA", "2KIA"],
      ["NR", "PTC", "NMC", "1MC", "1MC", "2MC" "2MC", "3MC", "4MC", "K/4", "1KIA"],
      ["NR", "NR", "PTC", "NMC", "1MC", "1MC", "2MC", "2MC", "3MC", "4MC", "K/4"],
      ["NR", "NR", "NR", "PTC", "NMC", "1MC", "1MC", "2MC", "2MC", "3MC", "4MC"],
      ["NR", "NR", "NR", "NR", "PTC", "NMC", "1MC", "1MC", "2MC", "2MC", "3MC"]
     ]
  end

  def roll(firepower)
    roll = DR.new

    #Round down any firepower value to match a valid firepower total
    firepower = fp.select {|c| c <= firepower}.max

    if roll.cower?
      result = @ift[roll.total][firepower - 1]
    else
    result = @ift[roll.total][firepower]
    end
    
    puts "#{roll.tell} | \033[1m\033[35m#{result}\033[0m"
  end
    
end
