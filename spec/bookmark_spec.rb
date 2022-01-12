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
      
      expect(bookmarks).to include({:title => "Makers Academy", :url => "http://www.makersacademy.com/"})
      expect(bookmarks).to include({:title => "Destroy all software", :url => "http://www.destroyallsoftware.com/"})
      expect(bookmarks).to include({:title => "google", :url => "http://www.google.com/"})
    end
  end

  describe '.add'
    it 'adds a bookmark to the database' do
      Bookmark.add(url, title)
      expect(Bookmark.all).to include({title: title, url: url})
    end
end
