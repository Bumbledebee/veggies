$: << 'lib'

require 'application'
require 'sinatra'
require 'pry'


get '/' do
  erb :index
end

post '/' do
  application = Application.new(params[:year])
  erb :chinese_year, :locals => { :result => application.chinese_year }
end
