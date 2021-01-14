require "byebug"

def reverser(str, &prc)
  prc.call(str.reverse)
end

def word_changer(str, &prc)
  arr = str.split(" ")
  new_arr = []
  arr.each { |word| new_arr << prc.call(word) }
  new_arr.join(" ")
end

def greater_proc_value(num, prc_1, prc_2)
  return prc_1.call(num) if prc_1.call(num) > prc_2.call(num)
  prc_2.call(num)
end

def and_selector(arr, prc_1, prc_2)
  new_arr = []
  arr.each { |elem| new_arr << elem if prc_1.call(elem) && prc_2.call(elem) }
  new_arr 
end

def alternating_mapper(arr, prc_0, prc_1)
  new_arr = []
  arr.each_with_index do |elem, idx|
    if idx % 2 == 0 
        new_arr << prc_0.call(elem)
    else 
        new_arr << prc_1.call(elem)
    end
  end
  new_arr 
end