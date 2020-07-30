require 'sinatra'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
    get '/' do
        erb :index
    end

    get '/bookmarks' do
        # p ENV
        @bookmarks = Bookmark.all
        erb :bookmarks
    end

    get '/new' do
      erb :new
    end

    post '/bookmarks' do
        Bookmark.create(url: params[:url])
        # url = params['url']
        # connection = PG.connnect(dbname: 'bookmark_manager_test')
        # connection = PG.connect("INSERT INTO bookmarks (url) VALUES('#{url}')")
        redirect '/bookmarks'
    end

    post '/bookmarks' do
      Bookmark.create(url)
    end

    run! if app_file == $0
end