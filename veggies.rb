require 'sinatra'
require 'sinatra/flash'
enable :sessions

get '/' do
  erb :index
end

post '/' do
  @guess = params[:guess]
  @words = ['Carrots', 'Potatoes', 'Sellery', 'Eggplants', 'Spinage', 'Bellpeppers']
  @word = @words.sample
  @letters = @word.split('')
  if @word == @guess
    flash[:info] = "Your guess (#{@guess}) was correct. You won."
  else
    flash[:info] = "Your guess (#{@guess}) was not correct. A random letter of the word is (#{@word.sample})"
  end

  redirect '/'
end
