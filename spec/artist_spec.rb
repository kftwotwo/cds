require('rspec')
require('artist')

describe(Artist) do
  describe('#artist_name') do
    it('get the artist name') do
      test_vehicle = Vehicle.new({:make=>"Mazda"})
      expect(test_vehicle.make()).to(eq("Mazda"))
    end
  end
end
