class Artist
  attr_reader(:artist_name, :id)
  @@artists = []

  def initialize(attributes)
    @artist_name = attributes.fetch(:artist_name, "Not Available")
    @id = @@artists.length.+(1)
  end

  def id
    @id
  end
  def save
    @@artists.push(self)
  end

  define_singleton_method(:all) do
    @@artists
  end

  define_singleton_method(:clear) do
    @@artists =[]
  end

  define_singleton_method(:find) do |id|
    found = nil
    @@artists.each() do |artist|
      if artist.id() == id
        found = artist
      end
    end
    found
  end
end
