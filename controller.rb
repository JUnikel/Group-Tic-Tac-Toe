require 'rubygems'
require 'sinatra'
require_relative 'models/TTT.rb'
enable :sessions

get '/' do
	@game = Game.new
	session[:game] = @game
	erb :welcome
end

get '/p1' do
	@game = session[:game]
	if @game.p2win == true
		erb :results
	else
		erb :p1
	end
end

post '/p1' do
	@game = session[:game]
	@game.player2(params[:grid_position]) 
	@game.player2win

	if @game.p2win == true
		erb :results
	else
		erb :p1
	end
end

post '/p2' do
	@game = session[:game]
	@game.player1(params[:grid_position]) 
	@game.player1win

	if @game.p1win == true
		erb :results
	else
		erb :p2
	end
end

post '/results' do
	@game = session[:game]

end


