class LRUCache
    def initialize(size)
        @size = size
        @lru_cache = []
    end

    def count
      @lru_cache.length
    end

    def add(el)
        if @lru_cache.include?(el)
            @lru_cache.delete(el)
            @lru_cache << el
        else
            if self.count < @size
                @lru_cache << el
            else
                @lru_cache.shift
                @lru_cache << el
            end
        end
      # adds element to cache according to LRU principle
    end

    def show
      p @lru_cache
    end

    private
    # helper methods go here!

  end

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


  johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]