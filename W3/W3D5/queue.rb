class Queue
  def initialize
    @queue = [] # create ivar to store queue here!
  end

  def enqueue(el)
    # adds an element to the queue
    @queue << el
    self
  end

  def dequeue
    # removes one element from the queue
    @queue.shift
  end

  def peek
    # returns, but doesn't remove, the first element in the queue
    @queue.dup.first # return a shallow duplicate to avoid manipulation
  end

  def inspect
    "#<Queue: #{self.object_id}>" # redefine the inspect method to limit the info output
  end
end
