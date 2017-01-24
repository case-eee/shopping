require 'sinatra'
require 'sinatra/reloader'

# Practice with Query String Params

get '/' do
  @name = params["name"]

  erb :index
end

get '/cart' do
  @item = params["item"]
  @price = params["price"]
  erb :cart
end

# Practice with Form Params

post '/items' do
  @item = params["item"]
  @price = params["price"]
  erb :cart
end

post '/items' do
  erb :cart
end

get '/users/new' do
  @username = params["username"]
  @password = params["password"]
  erb :user
end

post '/users' do
  @username = params["username"]
  @password = params["password"]
  erb :user
end
