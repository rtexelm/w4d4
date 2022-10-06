class Hanoi
    attr_reader :stacks

    def initialize
        @stacks = [[3,2,1], [], []]
    end

    def move(from_stack_idx, to_stack_idx)
        from_stack = self.stacks[from_stack_idx]
        to_stack = self.stacks[to_stack_idx]
        to_stack << from_stack.pop
    end

    def user_move
        from, to = gets.chomp.split(" ").map(&:to_i)
        self.move(from, to)
    end

    def won?
        self.stacks[1..2].any? { |stack| stack == [3,2,1] }
    end

    def to_s
        grid = ""
        (0..2).each do |i|
            row = ""
            (0..2).each do |j|
                if self.stacks[i][j] != nil
                    row += stacks[i][j].to_s + " "
                else
                    row += "[]"
                end
            end
            grid += row + "\n"
        end
        grid
    end

    def play
        until self.won?
            puts self
            puts "Enter the stack index you want to move from, followed by the stack index to move to: "
            self.user_move
        end
        puts "You win!"
    end
end