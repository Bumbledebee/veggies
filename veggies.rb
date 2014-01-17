$: << 'lib'

require 'lib/application'
require 'sinatra'



get '/' do
  erb :index
end

post '/' do
  application = Application.new(params[:year])
  erb :chinese_year, :locals => { @zodiac => application.chinese_year }
end
