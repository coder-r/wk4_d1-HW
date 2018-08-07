require ('sinatra')
require ('sinatra/contrib/all')
require ('pry-byebug')

require_relative ('models/game')
also_reload('./models/*')

get('/:player_1_input/:player_2_input') do
  game = Game.new(params[:player_1_input], params[:player_2_input])
  @outcome = game.outcome()
  erb (:result)
end

get '/' do
  erb(:home)
end

get '/about_us' do
  erb(:about_us)
end
