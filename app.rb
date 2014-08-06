require 'sinatra'
require 'yaml'
require 'hashie/mash'

get '/' do
  @bookmarks = Hashie::Mash.new(YAML.load_file('./bookmarks.yml')).bookmarks
  erb :index
end
