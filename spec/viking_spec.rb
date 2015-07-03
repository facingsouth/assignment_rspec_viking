# Your code here


require 'viking'

describe Viking do

  let(:viking) { Viking.new("Oleg", 80, 10, nil) }
  let(:viking_default) { Viking.new }

  describe "#Initialize" do

    it "should be albe to set name" do

      expect(viking.name).to eq("Oleg")

    end

    it "should be albe to set health" do

      expect(viking.health).to eq(80)

    end

    specify "health can not be overwritten" do

      expect { viking.health = 100 }.to raise_error(NoMethodError)
 
    end

    specify "viking has no weapon by default" do

      expect(viking_default.weapon).to eql(nil)

    end
  end

  describe "#pick_up_weapon" do

    let(:sword) { Weapon.new("name") }

    it "should be able to pick up a weapon" do

    end

  end

end













