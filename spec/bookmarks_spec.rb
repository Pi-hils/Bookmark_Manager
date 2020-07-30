require 'pg'

feature "viewing bookmarks" do
    scenario "to get bookmarks" do
        
        visit ('/bookmarks')

        expect(page).to have_content("https://www.diagram.codes")
        expect(page).to have_content("http://www.makersacademy.com")
        expect(page).to have_content("http://www.twitter.com")
        expect(page).to have_content("http://www.google.com")
    end
end