require "cd"
require "rspec"

describe(Cd) do
  describe('#initialize') do
    it('get info for cd') do
      test_artist = Cd.new({:album_name => 'Kevin', :songs => "Song1", :gene => "Rock"})
      expect(test_artist.album_name()).to(eq("Kevin"))
      expect(test_artist.songs()).to(eq("Song1"))
      expect(test_artist.gene()).to(eq("Rock"))
    end
  end

  # describe('.all') do
  #   it "the array should be empty" do
  #   expect(Artist.all()).to(eq([]))
  #   end
  # end
  #
  # describe('#save') do
  #   it "will save the ablum to an array" do
  #   test_artist = Artist.new(:artist_name => 'Kevin', :songs => "Song1", :gene => "Rock")
  #   expect(test_artist.save()).to(eq([test_artist]))
  #   end
  # end

  # describe('.clear') do
  #   it "empties the array" do
  #     expect(Artist.clear()).to(eq([]))
  #   end
  # end
end
