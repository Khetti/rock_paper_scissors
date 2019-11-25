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
  player1 = params['']
  player2 = params['']
  @result = Game.play(player1, player2)
  erb(:rock_rock)
end

get '/play/rock/scissors' do
  player1 = params['']
  player2 = params['']
  @result = Game.play(player1, player2)
  erb(:rock_scissors)
end

get '/play/rock/paper' do
  erb(:rock_paper)
end

get '/play/scissors/scissors' do
  erb(:scissors_scissors)
end

get '/play/scissors/rock' do
  erb(:scissors_rock)
end

get '/play/scissors/paper' do
  erb(:scissors_paper)
end

get '/play/paper/paper' do
  erb(:paper_paper)
end

get '/play/paper/rock' do
  erb(:paper_rock)
end

get '/play/paper/scissors' do
  erb(:paper_scissors)
end
