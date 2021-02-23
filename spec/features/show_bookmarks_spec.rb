feature 'User can see bookmarks' do
  scenario 'see all bookmarks' do
    visit '/bookmarks'

    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.twitter.com"
    expect(page).to have_content "http:/www.destroyallsoftware.com"
  end
end
