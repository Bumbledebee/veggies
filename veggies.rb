require 'sinatra'

get '/' do
  @guesses = 8
  erb :index
end

get '/check' do
  "Hello World"
end
