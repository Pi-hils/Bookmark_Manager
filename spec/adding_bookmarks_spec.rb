
feature "Adding a new bookmark" do
    scenario 'A user can add a bookmark to Bookmark Manager' do
        visit ('/bookmarks/new')
        fill_in 'url', with: 'http://newbookmark.com'
        fill_in 'title', with: 'New bookmark'
        click_button('Submit')

        expect(page).to have_link('New bookmark', href: 'http://newbookmark.com')
    end
end 