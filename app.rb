require 'sinatra/base'
# require 'spec_helper'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  use Rack::Session::Cookie,  :key => 'rack.session',
                              :path => '/',
                              :secret => 'your_secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1 = Player.new(params[:Player1])
    @player_2 = Player.new(params[:Player2])
    $game = Game.new(@player_1, @player_2)
    # session[:player_1_name] = params[:Player1]
    # session[:player_2_name] = params[:Player2]
    redirect '/play'
  end

  get '/play' do
    @player_2_attacked = session[:attack_on_player_2]
    p $game.second_player
    erb(:play)
  end

  post '/attack' do
    @game = $game
    session[:attack_on_player_2] = true
    @game.attack(@game.second_player)
    @game.switch
    redirect '/play'
  end


  run! if app_file == $0
end
