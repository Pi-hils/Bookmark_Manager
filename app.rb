require 'sinatra'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
    enable :sessions, :method_override
get '/' do
   erb :index
end

get '/bookmarks' do
    # p ENV
@bookmarks = Bookmark.all
  p @bookmarks.first.url
  erb :bookmarks
end

get '/bookmarks/new' do
  erb :new
end

post '/bookmarks' do
  Bookmark.create(url: params[:url], title: params[:title])
  redirect '/bookmarks'
end

delete '/bookmarks/:id' do
#   p params
 Bookmark.delete(id: params[:id])
  redirect '/bookmarks'
end


run! if app_file == $0
end