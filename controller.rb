require('sinatra')
require('sinatra/contrib/all') if development?
require('pry')

require_relative('models/game')
also_reload('./models/*')

get '/' do
  erb( :home )
end

get '/:move1/:move2' do
  @game = Game.game(params[:move1],params[:move2])
  erb ( :result )
end
