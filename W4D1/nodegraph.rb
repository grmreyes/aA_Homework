class GraphNode
    attr_accessor :value, :neighbors
  
    def initialize(value)
        @value = value
        @neighbors = []
    end
end
  


def bfs(starting_node, target_value)
    queue = [starting_node]
    visited = []

    while !queue.empty?
        result = queue.shift
        visited << result
        if result.value == target_value
            return result
        else
            result.neighbors.each do |neighbor|
                if !visited.include?(neighbor)
                    queue << neighbor
                end
            end
        end
    end
    visited.each{|ele| p ele.value}
    return nil    
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a,"f")