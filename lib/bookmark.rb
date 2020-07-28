require 'pg'

class Bookmark
    def self.all
    if ENV['ENVIRONMENT'] == 'test'
         connection = PG.connect(dbname: 'bookmark_manager_test')
     else
        connection = PG.connect(dbname: 'bookmark_manager')
     end

      connection.exec("INSERT INTO bookmarks (url) VALUES('https://www.diagram.codes');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.twitter.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

     result = connection.exec("SELECT * FROM bookmarks").map { |bookmark| bookmark['url'] }
    end
end
  
  