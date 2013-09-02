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
  existing_page = Page.find_by(base_url: page.base_url)
  msg = "Succesfully recorded blocked page. "
  if existing_page
    existing_page.count += 1
    existing_page.save
  else
    page.count = 1
    msg = "Failed to record blocked page. " unless page.save
  end
  msg += "For those curious as to why we're tracking this information, rest assured you are not tied to this data in any way. We are just curious as to what pages people are blocking and how often the app is being used."
  msg
end
