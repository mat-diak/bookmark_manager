require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.youtube.com")
      expect(bookmarks).to include("http://www.imdb.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end
end
