require 'sinatra/base'
# require 'spec_helper'
require './lib/player'

class Battle < Sinatra::Base
  use Rack::Session::Cookie,  :key => 'rack.session',
                              :path => '/',
                              :secret => 'your_secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:Player1])
    $player_2 = Player.new(params[:Player2])
    # session[:player_1_name] = params[:Player1]
    # session[:player_2_name] = params[:Player2]
    redirect '/play'
  end

  get '/play' do
    @player_2_attacked = session[:attack_on_player_2]
    erb(:play)
  end

  post '/attack' do
    session[:attack_on_player_2] = true
    $player_2.is_attacked
    redirect '/play'
  end


  run! if app_file == $0
end
