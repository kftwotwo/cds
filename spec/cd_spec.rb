require "cd"
require "rspec"

describe(Cd) do
  describe('#initialize') do
    it('get info for cd') do
      test_artist = Cd.new(:album_name => 'Kevin', :songs => "Song", :gene => "Rock")
      expect(test_artist.album_name()).to(eq("Kevin"))
      expect(test_artist.songs()).to(eq("Song"))
      expect(test_artist.gene()).to(eq("Rock"))
    end
  end

  describe('.all') do
    it "the array should be empty" do
      Cd.clear()
    expect(Cd.all()).to(eq([]))
    end
  end

  describe('#save') do
    it "will save the ablum to an array" do
    test_artist = Cd.new(:artist_name => 'Kevin', :songs => "Song1", :gene => "Jazz")
    expect(test_artist.save()).to(eq([test_artist]))
    end
  end

  describe('.clear') do
    it "empties the array" do
      expect(Cd.clear()).to(eq([]))
    end
  end

  describe('.all') do
    it "the array should be empty with the .clear" do
    test_artist = Cd.new(:artist_name => 'Kevin', :songs => "Song1", :gene => "Dubstep").save()
    Cd.clear()
    expect(Cd.all()).to(eq([]))
    end
  end

  describe('.find') do
    it ('will find artist by id') do
      test_cd = Cd.new(:album_name => 'Kevin', :songs => "Song1", :gene => "Classical")
      test_cd.save()
      test_cd2 = Cd.new(:album_name => 'Steve', :songs => "Song2", :gene => "RnB")
      test_cd2.save()
      expect(Cd.find(test_cd.id())).to(eq(test_cd))
    end
  end
end
