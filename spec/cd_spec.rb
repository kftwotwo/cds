require "cd"
require "rspec"

describe(Cd) do
  describe('#initialize') do
    it('get info for cd') do
      test_artist = Artist.new(:artist_name => 'Kevin', :ablum_name => "Computer", :gene => "Rock")
      expect(test_artist.artist_name()).to(eq("Kevin"))
      expect(test_artist.ablum_name()).to(eq("Computer"))
      expect(test_artist.gene()).to(eq("Rock"))
    end
  end

  describe('.all') do
    it "the array should be empty" do
    expect(Artist.all()).to(eq([]))
    end
  end

  describe('#save') do
    it "it will save the ablum to an array" do
    test_artist = Artist.new(:artist_name => 'Kevin', :ablum_name => "Computer", :gene => "Rock")
    expect(test_artist.save()).to(eq([test_artist]))
    end
  end
end
