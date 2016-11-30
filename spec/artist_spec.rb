require('rspec')
require('artist')

describe(Artist) do
  describe('#initialize') do
    it('get info for cd') do
      test_artist = Artist.new(:artist_name => 'Kevin')
      expect(test_artist.artist_name()).to(eq("Kevin"))
    end
  end
end
