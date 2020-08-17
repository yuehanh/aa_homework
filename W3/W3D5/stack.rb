class Stack
  def initialize
    @stacks = []
  end

  def push(el)
    # adds an element to the stack
    @stacks << el
    self  # return the object to avoid data manipulation
  end

  def pop
    # removes one element from the stack
    @stacks.pop
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    @stacks.dup.last #return a shallow duplicate to avoid manipulation
  end
  
  def inspect
    "#<Stack:#{self.object_id}>"  # redefine the inspect method to limit the info output
  end
end
