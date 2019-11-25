require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/game.rb')
also_reload('./models/*')

get '/' do
  return "Nothing here... yet!"
end
