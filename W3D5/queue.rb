class Queue
    def initialize
      @queue = []# create ivar to store queue here!
    end

    def push(el)
      # adds an element to the queue
      @queue << el
    end

    def pop
      # removes one element from the queue
      @queue.shift
    end

    def peek
      # returns, but doesn't remove, the first element in the queue
      @queue.first
    end
  end