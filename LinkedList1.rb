class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        # IMPLEMENT ME!
        @data = LinkedListNode.new(value, @data)
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        # I RETURN A VALUE
        return print "nil\n" if @data.nil?
          print "#{@data.value}\n"
        list = list.next_node
    end

end

def reverse_list(list)
    # ADD CODE HERE
    stack = Stack.new

    while list
        # ADD CODE HERE
        stack.push(list.value)
        list = list.next_node
    end

    # ADD CODE HERE
    return stack.data
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(45, node3)
node5 = LinkedListNode.new(83, node4)
node6 = LinkedListNode.new(67, node5)
node7 = LinkedListNode.new(02, node6)

print_values(node7)

puts "-------"

revlist = reverse_list(node7)
print_values(revlist)