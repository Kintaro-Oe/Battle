require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
    #"Testing infrastructure working!"
  end

  post "/names" do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect "/play"
  end

  get "/play" do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :play
  end

  get "/attack" do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    Game.new.attack($player_2)
    erb :attack
  end

  get "/Battle" do
    "Hello battle!"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
