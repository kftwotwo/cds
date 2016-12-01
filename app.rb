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

post('/artist') do
  artist_name = params.fetch('artist_name')
  artist = Artist.new({:artist_name => artist_name})
  artist.save()
  @artists = Artist.all()
  erb(:success)
end

get('/artist/new') do
  erb(:artist_form)
end

get('/artist/:id') do
  @artists = Cd.find(params.fetch('id').to_i())
  erb(:album)
end

get('/cd/:id') do
  @cd = Cd.find(params.fetch("id").to_i())
  erb(:album)
end

get('/artist/:id/cd/new') do
    @artists = Artist.find(params.fetch('id').to_i())
    erb(:artist_cd_form)
end

post('/cd') do
  album_name = params.fetch('album_name')
  gene = params.fetch('gene')
  songs = params.fetch('songs')
  @cd = Cd.new({:album_name => album_name, :gene => gene, :songs => songs})
  @cd.save()
  @artists = Artist.find(params.fetch('artist_id').to_i())
  @artists.add_cd(@cd)
  erb(:success)
end
