# require 'erb'

class Application
  def initialize(year)
    @year = year
  end

  def chinese_year
    if @year%12 == 0
      zodiac = "Monkey"
    elsif @year%12 == 1
      zodiac = "Rooster"
    elsif @year%12 == 2
      zodiac = "Dog"
    elsif @year%12 == 3
      zodiac = "Pig"
    elsif @year%12 == 4
      zodiac = "Rat"
    elsif @year%12 == 5
      zodiac = "Ox"
    elsif @year%12 == 6
      zodiac = "Tiger"
    elsif @year%12 == 7
      zodiac = "Rabbit"
    elsif @year%12 == 8
      zodiac = "Dragon"
    elsif @year%12 == 9
      zodiac = "Snake"
    elsif @year%12 == 10
      zodiac = "Horse"
    elsif @year%12 == 11
      zodiac = "Goat"
    end
  end

end
