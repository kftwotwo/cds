require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('pry')
require('./lib/artist')
require('./lib/cd')

get('/') do
  erb(:index)
end

get('/artist') do
  @artists = Artist.all()
  erb(:all_artist)
end
get('/artist/new') do
  erb(:artist_form)
end
