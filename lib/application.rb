# require 'erb'

class Application
  attr_reader :year

  def initialize(year)
    @year = year.to_i
  end

  def chinese_year
    case (@year%12)
    when 0 then "Monkey"
    when 1 then "Rooster"
    when 2 then "Dog"
    when 3 then "Pig"
    when 4 then "Rat"
    when 5 then "Ox"
    when 6 then "Tiger"
    when 7 then "Rabbit"
    when 8 then "Dragon"
    when 9 then "Snake"
    when 10 then "Horse"
    when 11 then "Goat"
    end
  end

end
