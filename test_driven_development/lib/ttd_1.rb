class Array
    def my_uniq
        hash = Hash.new(0)
        self.each do |ele|
            hash[ele] += 1
        end
        hash.keys
    end

    def two_sum
        result = []
        (0...self.length-1).each do |i|
            (i+1...self.length).each do |j|
                if self[i] + self[j] == 0
                    result << [i, j]
                end
            end
        end
        result
    end

    def my_transpose
        # return self if self.empty?
        raise "2D array must be square" if !self.all?{|sub| sub.length == self.length}
        result = Array.new(self.length) {Array.new(self.length)}
        (0...self.length).each do |i|
            (0...self.length).each do |j|
                result[i][j] = self[j][i]
            end
        end
        result
    end
end

