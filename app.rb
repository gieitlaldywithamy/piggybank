require 'sinatra'
require 'sinatra/contrib/all'

require_relative('./controllers/transaction_controller.rb')
require_relative('./controllers/merchant_controller.rb')
require_relative('./controllers/tag_controller.rb')
require_relative('./controllers/user_controller.rb')

require_relative('./models/transaction.rb')
require_relative('./models/tag.rb')
require_relative('./models/merchant.rb')
require_relative('./models/user.rb')

get '/' do
    erb(:index)
end
