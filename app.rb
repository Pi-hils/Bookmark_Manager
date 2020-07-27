require 'sinatra'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
    get '/' do
        erb :index
    end

    # get '/bookmarks' do
    #     bookmarks = [ 
    #         "https://www.diagram.codes/",
    #         "http://www.makersacademy.com",
    #         "http://www.google.com"
    #     ]
    #     erb :bookmarks
    # end

    get '/bookmarks' do
        @bookmarks = Bookmark.all
        erb :bookmarks
    end


    run! if app_file == $0
end