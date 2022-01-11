require 'bookmark'

describe Bookmark do
  
  let(:website) { 'http://www.youtube.com/' }
  
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      # Test data
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com/');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com/');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com/');")


      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makersacademy.com/")
      expect(bookmarks).to include("http://www.destroyallsoftware.com/")
      expect(bookmarks).to include("http://www.google.com/")
    end
  end

  describe '.add'
    it 'adds a bookmark to the database' do
      Bookmark.add(website)
      expect(Bookmark.all).to include(website)
    end
end
