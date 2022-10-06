require "ttd_1"

describe Array do
    subject(:array) {[1, 2, 1, 3, 3]}

    describe "#my_uniq" do

        it "should remove duplicates from an array" do
            expect(array.my_uniq).to eq([1, 2, 3])
        end

    end
end

describe Array do
    subject(:array) {[-1, 0, 2, -2, 1]}

    describe "#two_sum" do

        it "should find all pairs of pos where the elements at pos sum to 0" do
            expect(array.two_sum).to eq([[0, 4], [2, 3]])
        end

        it "should return pairs in a sorted order where smaller index is before bigger index" do
            expect(array.two_sum).to_not eq([[2, 3], [0, 4]])
        end
    end
end