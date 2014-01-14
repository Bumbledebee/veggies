require 'sinatra'
require 'sinatra/flash'
enable :sessions

get '/' do
  erb :index
end

post '/' do
  @guess = params[:guess]
  @words = ['Carrots', 'Potatoes', 'Sellery', 'Eggplants', 'Spinage', 'Bellpeppers']
  binding.remote_pry
  if @words.include?(@guess)
    flash[:info] = "Your guess (#{@guess}) was correct"
  else
    flash[:info] = "Your guess (#{@guess}) was not correct"
  end

  redirect '/'
end
