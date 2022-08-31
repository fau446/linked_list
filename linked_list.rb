class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    new_node = Node.new
    new_node.value = value
    @head = new_node if @head == nil
    @tail.next_node = new_node unless @tail == nil
    @tail = new_node
  end

  def prepend(value)
    new_node = Node.new
    new_node.value = value
    new_node.next_node = @head
    @head = new_node
    @tail = new_node if @tail == nil
  end

  def size
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

  def at(index)
    current_index = 0
    current_node = @head

    while current_node != nil
      return current_node if current_index == index
      current_node = current_node.next_node
      current_index += 1
    end

    # puts "There is no node at index #{index}."
  end

  def pop
    return if @tail == nil
    to_return = @tail
    # list size is 1?
    size = self.size
    if size == 1
      @tail = nil
    else
      @tail = self.at(size - 2)
      @tail.next_node = nil
    end


    to_return
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