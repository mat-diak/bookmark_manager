require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all

    # get page address from post /address
    @page_address = session[:page_address]

    erb :'bookmarks/index'
  end

  post '/address' do
    #we wanna save the address to the database
    session[:page_address] = params[:page_address]

    #we wanna go back to bookmarks
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
