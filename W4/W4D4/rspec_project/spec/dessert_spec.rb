require 'rspec'
require 'dessert'

# Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.

describe Dessert do
    let(:chef) { double('chef') }
    subject(:dessert) { Dessert.new('brownie', 50, chef) }

    describe '#initialize' do
        it 'sets a type' do
            expect(dessert.type).to eq('brownie')
        end
        it 'sets a quantity' do
            expect(dessert.quantity).to eq(50)
        end

        it 'starts ingredients as an empty array' do
            expect(dessert.ingredients).to be_empty
        end

        it 'raises an argument error when given a non-integer quantity' do
            expect { Dessert.new('brownie', 'sw', chef) }.to raise_error(ArgumentError)
        end
    end

    describe '#add_ingredient' do
        it 'adds an ingredient to the ingredients array' do
            dessert.add_ingredient('strawberry')
            expect(dessert.ingredients).to include('strawberry')
        end
    end

    describe '#mix!' do
        it 'shuffles the ingredient array' do
            dessert.add_ingredient('strawberry')
            dessert.add_ingredient('blueberry')
            dessert.add_ingredient('raspberry')
            dessert.add_ingredient('water')
            before = dessert.ingredients.dup
            dessert.mix!
            expect(dessert.ingredients).to_not eq(before)
        end
    end

    describe '#eat' do
        it 'subtracts an amount from the quantity' do
            dessert.eat(10)
            expect(dessert.quantity).to eq(50 - 10)
        end
        it 'raises an error if the amount is greater than the quantity' do
            expect { dessert.eat(60) }.to raise_error('not enough left!')
        end
    end

    describe '#serve' do
        it "contains the titleized version of the chef's name" do
            allow(chef).to receive(:titleize).and_return('Baker')
            expect(dessert.serve).to eq('Baker has made 50 brownies!')
        end
    end

    describe '#make_more' do
        it "calls bake on the dessert's chef with the dessert passed in" do
            expect(chef).to receive(:bake).with(dessert)
            dessert.make_more
        end
    end
end
