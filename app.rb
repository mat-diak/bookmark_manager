require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    also_reload './lib/bookmark'
    also_reload './lib/database'
  end

  enable :sessions, :method_override

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.get_all
    erb :'bookmarks/index'
  end

  post '/bookmarks/add' do
    Bookmark.add(params[:page_address], params[:title])
    redirect '/bookmarks'
  end

  delete '/bookmarks/:id' do
    # we need to delete the bookmark here
    # connection = PG.connect(dbname: 'bookmark_manager_test')
    # connection.exec_params("DELETE FROM bookmarks WHERE id = $1", [params[:id]])
    Bookmark.delete(params[:id])
    redirect 'bookmarks'
  end

  run! if app_file == $0
end
