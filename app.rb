require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  "hello!"
end

get '/secret' do
  "yo dude time for pizza"
end

get '/another_secret' do
  "boom boom"
end

get '/ben route' do
  "hello ben"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end

post '/named-cat' do#path is being called on the get method. patameter being passed into get method
  @name = params[:name]             #@name instance variable being added to the params hash
  @color = params[:color]
  @adorable = params[:adorable]
  erb :index
end

get '/cat-form' do
  @name = params[:name]
  erb :cat_form
end

# post '/named-cat' do
#   p params
#   @name = params[:name]
#   erb :index
# end

#How are the form values passed to the instance variables?
