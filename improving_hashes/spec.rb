require './hash'

describe Hash do 

  describe '#key' do 

    context "Where hash key is a string" do

      subject(:my_hash) { Hash['a', 100, 'b', 200] }

      it 'should return the value of the hash key' do 
        expect(my_hash.a).to eq(100)
      end

      it 'should return the value of the hash key' do 
        expect(my_hash.b).to eq(200)
      end

      it 'should return a NoMethodError exception' do 
        expect(my_hash.c).to raise_error(NoMethodError)
      end

    end

    context "Where hash key is a symbol" do 

      subject(:my_hash) { Hash[:a, 100, :b, 200] }

      it 'should return the value of the hash key' do 
        expect(my_hash.a).to eq(100)
      end

      it 'should return the value of the hash key' do 
        expect(my_hash.b).to eq(200)
      end

      it 'should return a NoMethodError exception' do 
        expect(my_hash.c).to raise_error(NoMethodError)
      end

    end

    context "Where hash key is a method that already exists in the Hash class" do 

      subject(:my_hash) { Hash['a', 100, 'b', 200, 'c', 300] }

      it 'should respond properly to methods that already exist' do
        expect(my_hash.size).to eq(3)
      end

      it 'should respond propertly to methods that already exist' do 
        expect(my_hash.values).to eq([100, 200, 300])
      end

      it 'should respond properly to methods that already exist' do 
        expect(my_hash.flatten).to eq(['a', 100, 'b', 200, 'c', 300])
      end

    end


  end

end