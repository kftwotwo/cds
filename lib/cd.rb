class Cd
  attr_reader(:album_name, :gene, :songs, :id)
  @@details = []

  def initialize(attributes)
    @album_name = attributes.fetch(:album_name, "Not Available")
    @songs = attributes.fetch(:songs, "Not Available")
    @gene = attributes.fetch(:gene, "Not Available")
    @id = @@details.length.+(1)
  end

  def id
    @id
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

  define_singleton_method(:find) do |id|
    found = nil
    @@details.each() do |detail|
      if detail.id() == id
        found = detail
      end
    end
    found
  end
end
