class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    new_node = Node.new
    new_node.value = value
    @head = new_node if @head == nil # if list is empty
    @tail.next_node = new_node unless @tail == nil
    @tail = new_node
  end

  def prepend(value)
    new_node = Node.new
    new_node.value = value
    new_node.next_node = @head
    @head = new_node
    @tail = new_node if @tail == nil # if list is empty
  end

  def size
    # needs to traverse through the linked list.
    count = 0
    current_node = @head

    while current_node != nil
      current_node = current_node.next_node
      count += 1
    end
    count
  end

  def head
    @head
  end

  def tail
    @tail
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize
    @value = nil
    @next_node = nil
  end
end

list = LinkedList.new
list.append(5)
list.append(4)
list.append(3)
list.append(8)
p list.size