require 'bookmark'

describe Bookmark do
  
  let(:website) { 'http://www.youtube.com/' }
  
  describe '.all' do
    it 'returns all bookmarks' do
      Bookmark.add("http://www.makersacademy.com/")
      Bookmark.add("http://www.destroyallsoftware.com/")
      Bookmark.add("http://www.google.com/")
      
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
