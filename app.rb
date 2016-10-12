require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  # $player_1 = Player.new(@player_1_name)
  # $player_2 = Player.new(@player_2_name)

  # enable :sessions

 get '/' do
   erb :index
 end

 post '/names' do
   $player_1 = Player.new(params[:player_1_name])
   $player_2 = Player.new(params[:player_2_name])
   redirect '/play'
 end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb(:play)
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb(:attack)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end

 get '/play' do
   @player_1_name = $player_1.name
   @player_2_name = $player_2.name
   erb(:play)
 end

 get '/attack' do
   @player_1 = $player_1
   @player_2 = $player_2
   @player_1.attack(@player_2)
   erb(:attack)
 end
 # start the server if ruby file executed directly
 run! if app_file == $0
end
>>>>>>> 72df339b9f0b366799a31d91e9a5afd2ba74c738
