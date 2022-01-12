require './lib/database'

class Bookmark

  def self.all
    bookmarks = Database.select_all('bookmark_manager', 'bookmarks')
    # bookmark_row is {"id"=>"25", "url"=>"URL", "title"=>"TITLE"}
    bookmarks.map { |bookmark_row|  bookmark_row['url'] + ' ' + bookmark_row['title'] }
    #  ['url'] + ' ' + bookmark_row['title']
  end
    
  def self.add(url, title)
    Database.add('bookmark_manager', 'bookmarks', url, title)
  end
end

# we want our class to have a title as well