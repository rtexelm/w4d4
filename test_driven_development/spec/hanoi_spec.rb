require "hanoi"

describe Hanoi do
    subject(:hanoi) { Hanoi.new }


    describe "#initialize" do

        it "should have a 2d array containing 3 stacks(arrays)" do
            expect(hanoi.stacks).to be_a(Array)
            expect(hanoi.stacks.length).to eq(3)
            expect(hanoi.stacks).to all(be_a(Array))
        end

        it "should have the first stack contain 3 discs, sorted by size" do
            expect(hanoi.stacks.first).to eq([3, 2, 1])
        end
    end

    describe "#move" do

        it "should move the top item from one stack to the top of another stack" do
            expect(hanoi.stacks[0]).to eq([3,2,1])
            hanoi.move(0, 1)
            expect(hanoi.stacks[0]).to eq([3,2])
            expect(hanoi.stacks[1]).to eq([1])
        end
        
    end

    describe "#won?" do

        it "should check if the game is won" do
            hanoi.move(0, 1)
            hanoi.move(0, 1)
            hanoi.move(0, 2)
            hanoi.move(1, 2)
            hanoi.move(1, 2)
            expect([3,2,1]).to eq(hanoi.stacks[1]).or eq(hanoi.stacks[2])
        end
        
    end
end