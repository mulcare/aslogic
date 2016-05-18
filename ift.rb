
class Chart
  attr_reader :ift
  
  def initialize
    @ift = [
      [1, 2, 3, 4, 6, 8, 12, 16, 20, 24, 30, 36], # FP row
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
end
