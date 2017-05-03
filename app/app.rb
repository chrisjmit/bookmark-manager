require "sinatra/base"
require "./app/models/link"


class BookmarkManager < Sinatra::Base

  get '/links' do
   @links = Link.all
   erb :index
  end

end
