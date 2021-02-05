class Stack
    def initialize(*args)
      # create ivar to store stack here!
      @stack_arr = []
      @stack_arr += args
    end

    def push(el)
      # adds an element to the stack
      @stack_arr << el
    end

    def pop
      # removes one element from the stack
      @stack_arr.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack_arr[-1]
    end
  end

#   test = Stack.new(1,5)
#   test.push(2)

#   p test
#   test.push(3)
#   p test
#   test.pop
#   p test
#   p test.peek

class Queue
    def initialize(*args)
      @queue_arr = []
      @queue_arr += args
    end

    def enqueue(el)
      @queue_arr << el
    end

    def dequeue
      @queue_arr.shift
    end

    def peek
      @queue_arr.first
    end
end

# test = Queue.new(1,5)
# test.enqueue(2)

# p test
# test.enqueue(3)
# p test
# test.dequeue
# p test
# p test.peek


class Map
    def initialize
      @map_arr = Array.new{Array.new}
    end

    def set(key,val)
      @map_arr.each do |kvpair|
        if kvpair[0] == key
            kvpair[1] = val
            return
        end
      end
      @map_arr << [key,val]
    end

    def get(key)
      @map_arr.each do |kvpair|
        return kvpair[1] if kvpair[0] == key
      end
      return nil
    end

    def delete(key)
        @map_arr.each_with_index do |kvpair,i|
            @map_arr.delete_at(i) if kvpair[0] == key
        end
    end

    def show
      p @map_arr
    end
end

# test = Map.new

# test.set(1,7)
# test.show
# test.set("hello","world")
# test.show
# p test.get("hello")
# test.set("hello","universe")
# test.show
# p test.get("hello")
# test.delete("hello")
# test.show
