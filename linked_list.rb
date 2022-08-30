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
      return current_node.value if current_index == index
      current_node = current_node.next_node
      current_index += 1
    end

    puts "There is no value at index #{index}."
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

p list.at(8)