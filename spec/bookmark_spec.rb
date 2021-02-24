require 'pg'

describe Bookmarks do

  describe '.all' do
    it 'connects to the database and shows all of the inputs' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

      bookmarks = Bookmarks.all

      expect(bookmarks).to include ('http://www.google.com' )
    end
  end

   describe '.add' do
     it 'adds new bookmark to the database' do

       connection = PG.connect(dbname: 'bookmark_manager_test')
       Bookmarks.add('http://www.google.com')

       bookmarks = Bookmarks.all

       expect(bookmarks).to include ('http://www.google.com')
     end
  end

end
