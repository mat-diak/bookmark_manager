require 'bookmark'

describe Bookmark do
  
  let(:url) { 'http://www.youtube.com/' }
  let(:title) { 'Test Title' }
  
  describe '.all' do
    it 'returns all bookmarks' do
      Bookmark.add("http://www.makersacademy.com/", 'Makers Academy')
      Bookmark.add("http://www.destroyallsoftware.com/", 'Destroy all software')
      Bookmark.add("http://www.google.com/", 'google')
      
      bookmarks = Bookmark.all
      
      expect(bookmarks).to include("http://www.makersacademy.com/")
      expect(bookmarks).to include("http://www.destroyallsoftware.com/")
      expect(bookmarks).to include("http://www.google.com/")
    end
  end

  describe '.add'
    it 'adds a bookmark to the database' do
      Bookmark.add(url, title)
      
      expect(Bookmark.all).to include(url)
    end
end
