# require 'erb'

class Application
  def initialize(year)
    @year = year
    @zodiac = ''
  end

  def chinese_year
    case @zodiac
      when (@year%12) == 0 then "Monkey"
      when (@year%12) == 1 then "Rooster"
      when (@year%12) == 2 then "Dog"
      when (@year%12) == 3 then "Pig"
      when (@year%12) == 4 then "Rat"
      when (@year%12) == 5 then "Ox"
      when (@year%12) == 6 then "Tiger"
      when (@year%12) == 7 then "Rabbit"
      when (@year%12) == 8 then "Dragon"
      when (@year%12) == 9 then "Snake"
      when (@year%12) == 10 then "Horse"
      when (@year%12) == 11 then "Goat"
    end
    @zodiac
  end

end
