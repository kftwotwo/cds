class Artist
  attr_reader(:artist_name, :ablum_name, :gene)
  @@albums = []

  def initialize(attributes)
    @artist_name = attributes.fetch(:artist_name, "Not Available")
    @ablum_name = attributes.fetch(:ablum_name, "Not Available")
    @gene = attributes.fetch(:gene, "Not Available")
  end

  def save
    @@albums.push(self)
  end

  define_singleton_method(:all) do
    @@albums
  end
end
