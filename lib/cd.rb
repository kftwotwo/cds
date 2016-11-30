class Cd
  attr_reader(:album_name, :gene, :songs)
  @@details = []

  def initialize(attributes)
    @album_name = attributes.fetch(:album_name, "Not Available")
    @songs = attributes.fetch(:songs, "Not Available")
    @gene = attributes.fetch(:gene, "Not Available")
  end

  def save
    @@details.push(self)
  end
  # 
  # define_singleton_method(:all) do
  #   @@details
  # end
  #
  # define_singleton_method(:clear) do
  #   @@details = []
  # end
end
