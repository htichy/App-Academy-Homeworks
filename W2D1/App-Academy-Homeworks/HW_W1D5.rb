class Stack
  def initialize
    @array = []
  end

  def push(el)
    array << el
  end

  def pop
    array.pop
  end

  def peek
    array.last
  end

  private

  attr_reader :array
end

class Queue
  def initialize
    @array = []
  end

  def enqueue(el)
    array.unshift(el)
  end

  def dequeue
    array.pop
  end

  def peek
    array.first
  end

  private

  attr_reader :array
end

class Map
  def initialize
    @array = []
  end

  def set(key, value)
    pair_index = array.index { |pair| pair[0] == key }
    if pair_index
      array[pair_index][1] = value
    else
      array.push([key, value])
    end
    value
  end

  def get(key)
    array.each { |pair| return pair[1] if pair[0] == key }
    nil
  end

  def delete(key)
    value = get(key)
    array.reject! { |pair| pair[0] == key }
    value
  end

  def show
    deep_dup(array)
  end

  attr_reader :array

  def deep_dup(array)
    array.map { |el| el.is_a?(Array) ? deep_dup(el) : el}
  end
end
