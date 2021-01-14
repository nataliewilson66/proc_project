require "byebug"

def my_map(arr, &prc)
  new_arr = []
  arr.each { |elem| new_arr << prc.call(elem) }
  new_arr
end

def my_select(arr, &prc)
  new_arr = []
  arr.each { |elem| new_arr << (elem) if prc.call(elem) }
  new_arr 
end

def my_count(arr, &prc)
  count = 0
  arr.each { |elem| count += 1 if prc.call(elem) }
  count 
end

def my_any?(arr, &prc)
  arr.each { |elem| return true if prc.call(elem) }
  false
end

def my_all?(arr, &prc)
  arr.each { |elem| return false if !prc.call(elem) }
  true 
end

def my_none?(arr, &prc)
  arr.each { |elem| return false if prc.call(elem) }
  true 
end