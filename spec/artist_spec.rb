require('rspec')
require('artist')

describe(Artist) do
  describe('#initialize') do
    it('get info for cd') do
      test_artist = Artist.new(:artist_name => 'Kevin', :ablum_name => "Computer", :gene => "Rock")
      expect(test_artist.artist_name()).to(eq("Kevin"))
      expect(test_artist.ablum_name()).to(eq("Computer"))
      expect(test_artist.gene()).to(eq("Rock"))
    end
  end
end
