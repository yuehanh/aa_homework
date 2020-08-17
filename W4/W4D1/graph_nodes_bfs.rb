require 'set'

def bfs(starting_node, target_value, visited = Set.new)
  return starting_node if starting_node.val == target_value

  visited << starting_node
  search_queue = [starting_node]
  until search_queue.empty?
    search_queue.shift.neighbors.each do |neighbor|
      return neighbor if neighbor.val == target_value

      unless visited.include?(neighbor)
        visited << neighbor
        search_queue << neighbor
      end
    end
  end
  nil
end


class GraphNode
  attr_reader :val
  attr_accessor :neighbors

  def initialize(val)
    @val = val
    @neighbors = []
  end

  def inspect
    "<@value = #{self.val}> "
  end
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

p bfs(a, "b")
p bfs(a, "f")