require 'sinatra/base'
require 'spec_helper'

class Battle < Sinatra::Base
  use Rack::Session::Cookie,  :key => 'rack.session',
                              :path => '/',
                              :secret => 'your_secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:Player1]).name
    $player2 = Player.new(params[:Player2]).name
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
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
