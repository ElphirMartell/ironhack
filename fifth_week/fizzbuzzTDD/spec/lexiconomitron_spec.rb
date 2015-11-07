require_relative "../Lexiconomitron"

describe Lexiconomitron do 

  before :each do
	@lexi = Lexiconomitron.new
  end

  describe "#eat_t" do
    it "removes every letter t from the input" do
      @lexi = Lexiconomitron.new
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end
  end

  describe "#shazam" do
  	it "reverse words in an array, removing every letter t from the input" do
  		@lexi = Lexiconomitron.new
  		expect(@lexi.shazam("great scott!")). to eq(["!ocs", "aerg"])
  	end
  end

  describe "oompa_loompa" do
  	it "In an array, removing every letter t from the input, but if your word has 3 or less letters your t won't be eaten" do
		@lexi = Lexiconomitron.new
		expect(@lexi.oompa_loompa("great ist scott!")).to eq(["grea", "ist", "sco!"])
	end
  end
    describe "oompa_loompa" do
  	it "In oompa_loompa, if your input is empty, the result must be an empty array" do
		@lexi = Lexiconomitron.new
		expect(@lexi.oompa_loompa("")).to eq([])
	end
  end

  describe "oompa_loompa" do
  	it "In oompa_loompa, if your input is a number, the result must an array of the numbers appeared" do
		@lexi = Lexiconomitron.new
		expect(@lexi.oompa_loompa(123)).to eq(["1", "2", "3"])
	  end
  end

end