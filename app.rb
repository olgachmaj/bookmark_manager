require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  enable :sessions, :method_override

get '/' do
  'Hello'
end

get '/bookmarks' do
  @list = Bookmark.all
  erb :index
end

get '/bookmarks/new' do
  @list = Bookmark.all
  erb :new
end

post '/add-new' do
  params
  "Form data submitted to the /bookmarks route!"
  @bookmark = Bookmark.add(url: params[:url], title: params[:title])
  redirect '/bookmarks'
end


delete '/bookmarks/:id' do
  Bookmark.delete(id: params[:id])
  redirect '/bookmarks'
end


run! if app_file == $0

end
