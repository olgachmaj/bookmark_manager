feature 'deleting a bookmark' do
  scenario 'user deletes a bookmark entry' do
    visit ('/bookmarks')
    click_button('add')
    fill_in('url', with: 'http://www.testbookmark.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Submit')

    click_button('delete')
    expect(page).not_to have_content('Test Bookmark')
  end
end
