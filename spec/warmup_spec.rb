require 'warmup'

describe Warmup do

  let(:warmup) { Warmup.new }

  describe "#gets_shout" do

    it "should get shout" do

      allow(warmup).to receive(:gets).and_return("shout")

      expect(warmup.gets_shout).to eq("SHOUT")

    end

  end

  describe "#double_size" do

    it "should double the array" do

      array = [[1,2], [3,4]]

      expect(warmup.double_size(array)).to eq(4)

    end
  end

  describe "#calls_some_methods" do

    let(:string) { "string" }

    it "should call upcase method" do

      allow(string).to receive(:upcase).and_return("STRING")

      expect(string).to receive(:upcase)

      warmup.calls_some_methods(string)

    end

  end

end