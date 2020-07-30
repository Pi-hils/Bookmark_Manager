require 'pg'

feature "viewing bookmarks" do
    scenario "to get bookmarks" do
        Bookmark.create(url: 'https://www.diagram.codes', title: 'Diagram.codes')
        Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
        Bookmark.create(url: 'http://www.twitter.com', title: 'Twitter')
        Bookmark.create(url: 'http://www.google.com', title: 'Google')
        
        visit ('/bookmarks')

        expect(page).to have_link('Diagram.codes', href: "https://www.diagram.codes" )
        expect(page).to have_link('Makers Academy', href: "http://www.makersacademy.com")
        expect(page).to have_link('Twitter', href: "http://www.twitter.com")
        expect(page).to have_link('Google', href: "http://www.google.com")
    end
end