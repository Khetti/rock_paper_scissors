require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/game.rb')
also_reload('./models/*')

# initialization for pages in view
# need a page for every possible outcome - 9
# homepage: links to 'play' or 'rules' page
# play page: links (and eventually buttons) for player1 RPS selection
# rules page: description of RPS rules and a play page link
# player1 page: links (buttons) for player2 RPS selection and results page
# results page: display result and provide links to home and play pages

get '/home' do
  erb(:home)
end

get '/play' do
  erb(:play)
end

get '/rules' do
  erb(:rules)
end

# creating the play links. the first choice is simply a link to a page,
# where the follow-up page will actually create our Game object and
# run our .play() method.

get '/play/rock' do
  erb(:rock)
end

get '/play/scissors' do
  erb(:scissors)
end

get '/play/paper' do
  erb(:paper)
end

get '/play/rock/rock' do
  player1 = 'rock'
  player2 = 'rock'
  @result = Game.play(player1, player2)
  erb(:result)
end

get '/play/rock/scissors' do
  player1 = 'rock'
  player2 = 'scissors'
  @result = Game.play(player1, player2)
  erb(:result)
end

get '/play/rock/paper' do
  player1 = 'rock'
  player2 = 'paper'
  @result = Game.play(player1, player2)
  erb(:result)
end

get '/play/scissors/scissors' do
  player1 = 'scissors'
  player2 = 'scissors'
  @result = Game.play(player1, player2)
  erb(:result)
end

get '/play/scissors/rock' do
  player1 = 'scissors'
  player2 = 'rock'
  @result = Game.play(player1, player2)
  erb(:result)
end

get '/play/scissors/paper' do
  player1 = 'scissors'
  player2 = 'paper'
  @result = Game.play(player1, player2)
  erb(:result)
end

get '/play/paper/paper' do
  player1 = 'paper'
  player2 = 'paper'
  @result = Game.play(player1, player2)
  erb(:result)
end

get '/play/paper/rock' do
  player1 = 'paper'
  player2 = 'rock'
  @result = Game.play(player1, player2)
  erb(:result)
end

get '/play/paper/scissors' do
  player1 = 'paper'
  player2 = 'scissors'
  @result = Game.play(player1, player2)
  erb(:result)
end
