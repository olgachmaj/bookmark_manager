require 'pg'

describe Bookmark do

  describe '.all' do
    it 'connects to the database and shows all of the inputs' do
      connection = PG.connect(dbname: 'bookmark_manager_test')


      bookmark = Bookmark.add(url: 'Google', title: 'www.google.com')
      bookmarks = Bookmark.all

      expect(bookmarks).to include bookmark.first
    end
  end

   describe '.add' do
     it 'adds new bookmark to the database' do

       connection = PG.connect(dbname: 'bookmark_manager_test')
       bookmark = Bookmark.add(url: 'http://www.testbookmark.com', title: 'Test Bookmark').first

       expect(bookmark['url']).to eq 'http://www.testbookmark.com'
       expect(bookmark['title']).to eq 'Test Bookmark'
     end
  end

end
