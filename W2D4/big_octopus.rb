def sluggish_octopus(array)
  longest = ""
  array.each_with_index do |el, i|
    longer = ""
    j = i + 1

    while j < array.length
      if array[j].length > el.length
        longer = array[j]
      else
        longer = el
      end
      j += 1
    end

    if longer.length > longest.length
      longest = longer
    end

  longest
end

def dominant_octopus(array)

end

def clever_octopus(array)
  longest = array.first

  array.each do |el|
    next if el == longest

    if el.length > longest.length
      longest = el
    end
  end

  longest
end
