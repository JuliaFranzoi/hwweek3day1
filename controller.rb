require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./models/game')

require('json')


get '/' do
  erb(:home)
end

get '/aboutus' do
  erb(:Aboutus)
end  



get '/game/:player1/player2' do
 game = Game.new(params[:player1], params[:player2])
 @result = game.playing()
 erb(:result)
end  


get '/game/:player1/:player2' do
 content_type( :json )
 game = Game.new(params[:@player1], params[:player2])
 results = {
  playing: game.playing(),
 }
 return results.to_json()

end  

get '/html' do
  send_file('./index.html')
end  