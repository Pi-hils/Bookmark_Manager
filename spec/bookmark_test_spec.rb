require './lib/bookmark'
require 'db_helpers'


describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do

      connection = PG.connect(dbname: 'bookmark_manager_test')

      bookmark = Bookmark.create(url: "https://www.diagram.codes", title: "Diagram.codes")
      Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")
      Bookmark.create(url: "http://www.twitter.com", title: "Twitter")
      Bookmark.create(url: "http://www.google.com", title: "Google")
      
      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 4
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id 
      expect(bookmarks.first.title).to eq("Diagram.codes")
      expect(bookmarks.first.url).to eq "https://www.diagram.codes"
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.create(url: 'http://www.newbookmark.com', title: 'New Bookmark')
      persisted_data = persisted_data(id: bookmark.id)
      # PG.connect(dbname: 'bookmark_manager_test').query("SELECT * FROM bookmarks WHERE id = #{bookmark.id};")

    expect(bookmark).to be_a Bookmark
    expect(bookmark.id).to eq persisted_data['id']
    expect(bookmark.title).to eq 'New Bookmark'
    expect(bookmark.url).to eq 'http://www.newbookmark.com'
    end
  end


   describe "delete bookmark" do
     it "deletes requested bookmark" do
     bookmark = Bookmark.create(url:'http://www.newbookmark.com', title: 'New Bookmark')
     Bookmark.delete(id: bookmark.id)
     expect(Bookmark.all.length).to eq 0
   end
  end

  describe '.update' do
    it 'updates the bookmark with the given data' do
      bookmark = Bookmark.create(title: 'Makers Academy', url: 'http://www.makersacademy.com')
      updated_bookmark = Bookmark.update(id: bookmark.id, url: 'http://www.snakersacademy.com', title: 'Snakers Academy')
  
      expect(updated_bookmark).to be_a Bookmark
      expect(updated_bookmark.id).to eq bookmark.id
      expect(updated_bookmark.title).to eq 'Snakers Academy'
      expect(updated_bookmark.url).to eq 'http://www.snakersacademy.com'
    end
  end
end

