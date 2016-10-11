require 'sinatra/base'

class Battle < Sinatra::Base
  # enable :sessions
  use Rack::Session::Cookie,:key => 'rack.session',
                            :path => '/',
                            :secret => 'your_secret'


  get '/' do
    erb :index
  end

  post '/names' do
    # session['names'] = params['names']
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end

  run! if app_file == $0
end
