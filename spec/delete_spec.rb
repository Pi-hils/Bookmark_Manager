require 'pg'

feature '.delete' do
  scenario "deleting from bookmark" do
    visit ('/bookmarks/new')
    fill_in "url",  with:"url"
    fill_in "title", with:"title"
    click_button("Submit") 

    expect(page).to have_button "delete"
  end

  feature 'has been deleted' do
    scenario "no longer has url/title bookmark" do
      visit ('/bookmarks/new')
      fill_in "url",  with:"url"
      fill_in "title", with:"title"
      click_button("Submit") 
      click_button("delete")
      
      expect(page).to_not have_link "title", href: "url"
    end
  end
end
