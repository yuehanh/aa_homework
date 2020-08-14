class Stack
  def initialize
    @stacks = []
  end

  def push(el)
    # adds an element to the stack
    @stacks << el
  end

  def pop
    # removes one element from the stack
    @stacks.pop
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    @stacks[-1]
  end
end
