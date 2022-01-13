require 'pg'

module Database

  def self.select_all
    Database.connect.exec "SELECT * FROM bookmarks;"
  end

  def self.add(url, title)
    Database.connect.exec("INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}') RETURNING id, url, title;")
  end
  
  def self.connect
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: "bookmark_manager_test")
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end  
  end
end