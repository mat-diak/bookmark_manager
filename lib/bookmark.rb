require './lib/database'

class Bookmark

  def self.all
    bookmarks = Database.select_all('bookmark_manager', 'bookmarks')
    # bookmark_row is {"id"=>"25", "url"=>"URL", "title"=>"TITLE"}
    # we have a hash, we want to see title as a separate string from the url on the page
    bookmarks.map { |bookmark_row|  "#{bookmark_row['title']}: #{bookmark_row['url']}" }
    #  ['url'] + ' ' + bookmark_row['title']

    # {"id"=>"25", "url"=>"URL", "title"=>"TITLE"}
  
  end
    
  def self.add(url, title)
    Database.add('bookmark_manager', 'bookmarks', url, title)
  end
end

# we want our class to have a title as well