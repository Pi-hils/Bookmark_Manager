
feature "Adding a new bookmark" do
    scenario 'A user can add a bookmark to Bookmark Manager' do
        visit ('/new')
        fill_in('url', with: 'http://newbookmark.com')
        click_button('Submit')

        expect(page).to have_content 'http://newbookmark.com'
    end
end 