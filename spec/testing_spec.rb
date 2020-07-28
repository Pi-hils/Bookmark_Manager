feature "testing" do
    scenario "testing" do
        visit "/"
        expect(page).to have_content("Bookmark Manager")
    end
end