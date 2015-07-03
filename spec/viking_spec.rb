# Your code here


require 'viking'

describe Viking do

  let(:viking) { Viking.new("Oleg", 80, 10, nil) }
  let(:viking_default) { Viking.new }
  let(:sword) { Weapon.new("name") }


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
      viking.pick_up_weapon(sword)
      expect(viking.weapon).to eql(sword)
    end

    it "should raise an error if picking up non-weapon" do
      expect{viking.pick_up_weapon(axe)}.to raise_error(Exception)
    end

    specify "picking up a weapon will replace previous weapon" do
      axe = Weapon.new("name_of_axe")
      viking.pick_up_weapon(sword)
      expect(viking.weapon).to eql(sword)
      viking.pick_up_weapon(axe)
      expect(viking.weapon).to eql(axe)
    end



  end

  describe '#drop_weapon' do

    it 'should set weapon to nil when called' do
      viking.pick_up_weapon(sword)
      expect(viking.weapon).to eql(sword)
      viking.drop_weapon
      expect(viking.weapon).to be_nil
    end

  end


  describe '#receive_attack' do

    it 'should reduce reduce health by attack ammount' do
      viking.receive_attack(10)
      expect(viking.health).to eql(70)
    end

    it 'should check that take_damage method is called' do

      expect(viking).to receive(:take_damage)
      viking.receive_attack(10)
    end

  end

  describe '#attack' do

    let(:target) {Viking.new}

    it 'should cause target.health to decrease' do
      expect(target.health).to eql(100)
      viking.attack(target)
      expect(target.health).to be < 100
    end

    it 'should check that target calls take_damage' do
      expect(target).to receive(:take_damage)
      viking.attack(target)
    end


  end




end













