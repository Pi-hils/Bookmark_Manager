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

get '/bookmarks/:id/edit' do
    @bookmark_id = Bookmark.find(id: params[:id])
    erb :edit
end

patch '/bookmarks/:id' do
    # connection = PG.connect(dbname: 'bookmark_manager_test')
    # connection.exec("UPDATE bookmarks SET url = '#{params[:url]}', title = '#{params[:title]}' WHERE id = '#{params[:id]}'")
    Bookmark.update(id: params[:id], title: params[:title], url: params[:url])
    redirect('/bookmarks')
end

run! if app_file == $0
end