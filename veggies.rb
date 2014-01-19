$: << 'lib'

require 'application'
require 'sinatra'


get '/' do
  erb :index
end

post '/' do
  application = Application.new(params[:year])
  erb :chinese_year, :locals => { :zodiac => application.chinese_year }
end


    # case
    #   when (@year%12) == 0 then zodiac = "Monkey"
    #   when (@year%12) == 1 then zodiac = "Rooster"
    #   when (@year%12) == 2 then zodiac = "Dog"
    #   when (@year%12) == 3 then zodiac = "Pig"
    #   when (@year%12) == 4 then zodiac = "Rat"
    #   when (@year%12) == 5 then zodiac = "Ox"
    #   when (@year%12) == 6 then zodiac = "Tiger"
    #   when (@year%12) == 7 then zodiac = "Rabbit"
    #   when (@year%12) == 8 then zodiac = "Dragon"
    #   when (@year%12) == 9 then zodiac = "Snake"
    #   when (@year%12) == 10 then zodiac = "Horse"
    #   when (@year%12) == 11 then zodiac = "Goat"
    # end
