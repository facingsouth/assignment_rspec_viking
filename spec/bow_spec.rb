# Your code here


require 'viking'


describe Bow do 

  let(:bow){Bow.new}
  let(:bow_five){Bow.new(5)}


  describe '#arrows' do 


    it 'should be able to read the arrow count' do

      expect(bow.arrows).to be_a(Integer)

    end

    it 'should default to 10 arrows' do

      expect(bow.arrows).to eql(10)

    end


    it 'should specify the number of arrows' do

      expect(bow_five.arrows).to eql(5)

    end
    
  end


  describe '#use' do

    it 'should reduce the number of arrows by 1' do



    end


  end

  
end












