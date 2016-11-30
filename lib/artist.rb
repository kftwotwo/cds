class Artist
  attr_reader(:artist_name, :ablum_name, :gene)

  def initialize(attributes)
    @artist_name = attributes.fetch(:artist_name, "Not Available")
    @ablum_name = attributes.fetch(:ablum_name, "Not Available")
  end
end
