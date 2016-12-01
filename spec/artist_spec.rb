require('rspec')
require('artist')

describe(Artist) do
  describe('#artist_name') do
    it('get info for cd') do
      test_artist = Artist.new(:artist_name => 'Kevin')
      expect(test_artist.artist_name()).to(eq("Kevin"))
    end
  end

  describe('.all') do
    it "the array should shoud" do
      Artist.clear()
    expect(Artist.all()).to(eq([]))
    end
  end

  describe('#save') do
    it "it will save the ablum to an array" do
    test_artist = Artist.new(:artist_name => 'Kevin')
    expect(test_artist.save()).to(eq([test_artist]))
    end
  end

  describe('.clear') do
    it "the array should be empty" do
    test_artist = Artist.new(:artist_name => 'Kevin')
    test_artist.save()
    expect(Artist.clear()).to(eq([]))
    end
  end

  describe('.all') do
    it "the array should have content" do
    test_artist = Artist.new(:artist_name => 'Kevin')
    test_artist.save()
    expect(Artist.all()).to(eq([test_artist]))
    Artist.clear()
    end
  end

  describe('.find') do
    it ('will find artist by id') do
      test_artist = Artist.new(:artist_name => "Diego")
      test_artist.save()
      test_artist2 = Artist.new(:artist_name => "Kevin")
      test_artist2.save()
      expect(Artist.find(test_artist.id())).to(eq(test_artist))
    end
  end
end
