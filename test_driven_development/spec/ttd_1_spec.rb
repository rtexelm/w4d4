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
            expect(array.two_sum).to match_array([[0, 4], [2, 3]]).or match_array([[4, 0], [3, 2]]).or match_array([[0, 4], [3, 2]]).or match_array([[4, 0], [2, 3]])
        end

        it "should return pairs in a sorted order where smaller index is before bigger index" do
            expect(array.two_sum).to_not eq([[2, 3], [0, 4]])
            expect(array.two_sum).to eq([[0, 4], [2, 3]])
        end
    end
end


describe Array do
    let(:empty_array) {[]}

    let(:rectangle_array) {[
        [0, 1, 2],
        [3, 4, 5]
    ]}

    let(:square_array) {[
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
    ]}


    describe "#my_transpose" do

        it "should return itself when it is an empty array" do
            expect(empty_array.my_transpose).to eq([])
        end

        it "should accept a square 2d array" do
            expect{rectangle_array.my_transpose}.to raise_error("2D array must be square")
        end

        it "should return a new 2d array with the rows and cols switched" do
            expect(square_array.my_transpose).to eq([
                                                [0, 3, 6],
                                                [1, 4, 7],
                                                [2, 5, 8]
                                            ])
        end
    end
end

describe "#stock_picker" do
    subject(:stocks) { [5, 2, 6, 8, 12, 10] }

    it "should return the most profitable pair of days on which to first buy the stock and then sell the stock" do
        expect(stock_picker(stocks)).to eq([1, 4])
    end
end