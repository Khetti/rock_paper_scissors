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
