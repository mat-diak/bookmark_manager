require './lib/database'

class Bookmark

  def self.all
    bookmarks = Database.select_all('bookmark_manager', 'bookmarks')
    bookmarks.map { |bookmark_row| bookmark_row['url'] }
  end
    
  def self.add(url)
    Database.add('bookmark_manager', 'bookmarks', url)
  end
end
