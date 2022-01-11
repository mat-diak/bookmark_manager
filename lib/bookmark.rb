require 'pg'

class Bookmark
  def self.all
    result = Bookmark.connection.exec 'SELECT * FROM bookmarks'
    result.map { |bookmark_row| bookmark_row['url'] }
  end
    
  def self.add(url)
    Bookmark.connection.exec("INSERT INTO bookmarks (url) VALUES (\'#{url}\');")
  end

  private

  # this is ideally to be somewhere else, called something different etc.
  def self.connection
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end  
  end
end
