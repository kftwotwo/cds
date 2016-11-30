class Cd
  attr_reader(:album_name, :gene, :songs, :id)
  @@details = []

  def initialize(attributes)
    @album_name = attributes.fetch(:album_name, "Not Available")
    @songs = attributes.fetch(:songs, "Not Available")
    @gene = attributes.fetch(:gene, "Not Available")
    # @id = @@details.length.+(1)
  end

  def save
    @@details.push(self)
  end

  define_singleton_method(:all) do
    @@details
  end

  define_singleton_method(:clear) do
    @@details = []
  end

  # define_singleton_method(:find) do |id|
  #   found = nil
  #   @@dealerships.each() do |dealership|
  #     if dealership.id() == id
  #       found = dealership
  #     end
  #   end
  #   found
  # end
end
