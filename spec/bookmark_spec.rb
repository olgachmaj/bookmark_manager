
describe Bookmark do

  describe '#all' do
    it 'connects to the database and shows all of the inputs' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include ('http://www.google.com' )
    end
  end
end
