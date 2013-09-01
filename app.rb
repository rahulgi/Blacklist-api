require 'sinatra'
require 'sinatra/activerecord'
require'./config/environments' # database config
require './models/page'

get '/' do
  @pages = Page.all
  erb :index
end

post '/' do
  page = Page.new(params[:page])
  msg = ""
  if page.save
    msg += "Succesfully recorded blocked page. "
  else
    msg += "Failed to record blocked page. "
  end
  msg += "For those curious as to why we're tracking this information, rest assured you are not tied to this data in any way. We are just curious as to what pages people are blocking and how often the app is being used."
  msg
end
