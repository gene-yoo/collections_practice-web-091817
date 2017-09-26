def sort_array_asc(integers)
  integers.sort
end

def sort_array_desc(integers)
  integers.sort {|a, b| b <=> a}
end

def sort_array_char_count(strings)
  strings.sort_by {|string| string.length}
end

def swap_elements(strings)
  strings[1], strings[2] = strings[2], strings[1]
  strings
end

def swap_elements_from_to(strings, old_pos, new_pos)
  strings[old_pos], strings[new_pos] = strings[new_pos], strings[old_pos]
  strings
end

def reverse_array(integers)
  integers.reverse
end

def kesha_maker(array)
  array.collect do |element|
    new_elem = element.split("")
    new_elem[2] = "$"
    new_elem.join("")
  end
end

def find_a(array)
  array.select {|word| word.downcase.start_with?("a")}
end

def sum_array(integers)
  integers.inject {|sum, int| sum + int}
end

def add_s(words)
  new_words = []
  words.each_with_index do |word, index|
    new_words << word + "s" unless index == 1
    new_words << word if index == 1
  end
  new_words
end
