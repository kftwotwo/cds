# class Cd
#   attr_reader(:ablum_name, :gene)
#   @@albums = []
#
#   def initialize(attributes)
#     @ablum_name = attributes.fetch(:ablum_name, "Not Available")
#     @gene = attributes.fetch(:gene, "Not Available")
#   end
#
#   def save
#     @@albums.push(self)
#   end
#
#   define_singleton_method(:all) do
#     @@albums
#   end
# end
