require 'pg'

class Database

  def self.select_all(db_name, tb_name)
    @db_name = db_name
    Database.connection.exec "SELECT * FROM #{tb_name};"
  end

  def self.add(db_name, tb_name, value)
    @db_name = db_name
    Database.connection.exec("INSERT INTO #{tb_name} (url) VALUES ('#{value}');")
  end
  
  def self.connection
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: "#{@db_name}_test")
    else
      connection = PG.connect(dbname: @db_name)
    end  
  end
end