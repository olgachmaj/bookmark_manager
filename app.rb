require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

get '/' do
  'Hello'
end

get '/bookmarks' do
  @list = Bookmarks.all
  erb :index
end

get '/bookmarks/new' do
  @list = Bookmarks.all
  erb :new
end

post '/add-new' do
  p params
  p "Form data submitted to the /bookmarks route!"
  Bookmarks.add(params[:new])
  redirect '/bookmarks'
end

run! if app_file == $0

end
