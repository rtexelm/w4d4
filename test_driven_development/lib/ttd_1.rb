class Array
    def my_uniq
        hash = Hash.new(0)
        self.each do |ele|
            hash[ele] += 1
        end
        hash.keys
    end
end