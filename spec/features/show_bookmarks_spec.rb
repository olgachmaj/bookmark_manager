feature 'User can see bookmarks' do
  scenario 'see all bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')


  Bookmark.add(url: 'http://www.testbookmark.com',title: 'Test Bookmark')


   visit('/bookmarks')


   expect(page).to have_link 'Test Bookmark', href: 'http://www.testbookmark.com'

  end
end
