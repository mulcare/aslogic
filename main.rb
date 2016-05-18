$nationality_codes = {
    "de" => "German",
    "ru" => "Russian",
    "br" => "British",
    "jp" => "Japanese",
    "fn" => "Finnish",
    "sw" => "Swedish"
}

$size_codes = {
  "hs" => "Half Squad",
  "fs" => "Full Squad",
  "cr" => "Crew"
}

class MultiManCounter
  attr_reader :nationality, :size, :quality
  def initialize(nationality, size, quality)

    @nationality = nationality.downcase
    if $nationality_codes.include?(@nationality)
      @nationality = $nationality_codes[@nationality]
    else
      puts "#{nationality} is not a valid nationality code"
    end

    @size = size.downcase
     if $size_codes.include?(@size)
       @size = $size_codes[@size]
     else
       puts "not valid size"
     end

  end
end
