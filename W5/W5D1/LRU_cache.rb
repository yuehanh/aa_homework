#with array and O(n)
class LRUCache
    def initialize(num)
        @max_size = num
        @cache = []
    end

    def count
        cache.length
      # returns number of elements currently in cache
    end

    def add(el)
        # adds element to cache according to LRU principle
        if cache.include?(el)
            cache << cache.delete(el)
        elsif count == max_size
            cache.shift
            cache << el
        else
            cache << el
        end
    end

    def show
        # show
        print  cache
        puts
        # nil
    end

    private
    attr_accessor :cache
    attr_reader :max_size
    # helper methods go here!

end


if $PROGRAM_NAME == __FILE__
    johnny_cache = LRUCache.new(4)

    johnny_cache.add("I walk the line")
    johnny_cache.add(5)
  
    johnny_cache.count # => returns 2
    johnny_cache.add([1,2,3])
    johnny_cache.add(5)
    johnny_cache.add(-5)
    johnny_cache.add({a: 1, b: 2, c: 3})
    johnny_cache.add([1,2,3,4])
    johnny_cache.add("I walk the line")
    johnny_cache.add(:ring_of_fire)
    johnny_cache.add("I walk the line")
    johnny_cache.add({a: 1, b: 2, c: 3})
    johnny_cache.show
end