class Artist
  attr_reader(:artist_name)
  @@albums = []

  def initialize(attributes)
    @artist_name = attributes.fetch(:artist_name, "Not Available")
  end

  def save
    @@albums.push(self)
  end

  define_singleton_method(:all) do
    @@albums
  end

  define_singleton_method(:clear) do
    @@albums =[]
  end
end
