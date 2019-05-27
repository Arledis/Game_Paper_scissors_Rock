require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( './models/game')
also_reload( './models/*')


get '/' do
  erb( :home )
end

get '/rules' do
  erb( :rules )
end

get '/rock/scissors' do
  game = Game.new(params[:rock], params[:scissors])
  @playgame = game.rock_scissors(rock, scissors)
  erb( :result )
end

get '/scissors/paper' do
  game = Game.new(params[:scissors], params[:paper])
  @playgame = game.scissors_paper()
  erb( :result )
end

get '/paper/rock' do
  game = Game.new(params[:paper], params[:rock])
  @playgame = game.paper_rock()
  erb( :result )
end

get '/rock/rock' do
  game = Game.new(params[:rock], params[:rock])
  @playgame = game.rock_rock()
  erb( :result )
end

get '/scissors/scissors' do
  game = Game.new(params[:scissors], params[:scissors])
  @playgame = game.scissors_scissors()
  erb( :result )
end

get 'paper_paper' do
  game = Game.new(params[:paper], params[:paper])
  @playgame = game.paper_paper()
  erb( :result )
end
