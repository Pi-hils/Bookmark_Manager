require 'pg'

feature "viewing bookmarks" do
    scenario "to get bookmarks" do
        connection = PG.connect(dbname: 'bookmark_manager_test')

        # connection.exec("INSERT INTO bookmarks VALUES(1, 'https://www.diagram.codes');")
        # connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.makersacademy.com');")
        # connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.twitter.com');")
        # connection.exec("INSERT INTO bookmarks VALUES(4, 'http://www.google.com');")

        visit ('/bookmarks')

        expect(page).to have_content("https://www.diagram.codes")
        expect(page).to have_content("http://www.makersacademy.com")
        expect(page).to have_content("http://www.twitter.com")
        expect(page).to have_content("http://www.google.com")
    end
end