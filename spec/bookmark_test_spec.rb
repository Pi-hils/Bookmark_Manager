require './lib/bookmark'

describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      #  connection.exec("INSERT INTO bookmarks(url) VALUES('https://www.diagram.codes');")
      #  connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")
      #  connection.exec("INSERT INTO bookmarks (url) VALUES(3, 'http://www.twitter.com');")
      #  connection.exec("INSERT INTO bookmarks (url) VALUES(4, 'http://www.google.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("https://www.diagram.codes")
      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.twitter.com")
      expect(bookmarks).to include("http://www.google.com")
    end
end

