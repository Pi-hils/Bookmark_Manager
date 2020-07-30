require 'pg'

class Bookmark

  attr_reader :id, :title, :url

  def initialize(id:, title:, url:)
    @id = id
    @title = title
    @url = url
  end

    def self.all
    if ENV['ENVIRONMENT'] == 'test'
       connection = PG.connect(dbname: 'bookmark_manager_test')
     else
       connection = PG.connect(dbname: 'bookmark_manager')
     end

      # connection.exec("INSERT INTO bookmarks (url) VALUES('https://www.diagram.codes');")
      # connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")
      # connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.twitter.com');")
      # connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

     result = connection.exec("SELECT * FROM bookmarks").map { |bookmark| 
      Bookmark.new(id: bookmark['id'], title: bookmark['title'], url: bookmark['url']) }
    end

    def self.create(url:, title:)
      if ENV['ENVIRONMENT'] == 'test'
         connection = PG.connect(dbname: 'bookmark_manager_test')
       else
         connection = PG.connect(dbname: 'bookmark_manager')
       end

       result = connection.exec("INSERT INTO bookmarks (url, title) VALUES('#{url}', '#{title}') RETURNING id, title, url;")
       Bookmark.new(id: result[0]['id'], title: result[0]['title'], url: result[0]['url'])
        end
  end

  
  