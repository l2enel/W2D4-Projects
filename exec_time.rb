require 'byebug'

def my_min(list)
  min_length = nil
  list.each do |el1|
    list.each do |el2|
      min_length ||= el1
      if el2 < el1
        min_length = el2
      end
    end
  end

  min_length
end
# Complexity
# Time O(n^2)
# Space O(1)
#
#


def my_min_v2(list)
  shortest_el = nil
  list.each do |el|
    shortest_el ||= el
    shortest_el = el if el.length < shortest_el.length
  end

  shortest_el
end
# Complexity
# Time O(n)
# Space O(1)
#
#

def largest_contiguous_subsum(arr_int)
  subs_arr = []
  arr_int.each_index do |idx1|
    arr_int.each_index do |idx2|
      next if idx2 < idx1
      subs_arr << arr_int[idx1..idx2]
    end
  end

  subs_arr.map! do |sammich|
    sammich = sammich.reduce(:+)
  end

  subs_arr.max
end
# Complexity
# Time O(n^3) - Once for idx1, once for idx2, once for map
# Space O(n^3) - Once for pair_arr, once for mapped, could argue 1
#
#

def largest_contiguous_subsumv2(arr_int)
  # pair_arr = []
  # next if arr_int[i + 1].nil?
  # largest sum = arr_int[i] + arr_int[i + 1]
  largest_sum = nil
  sum = 0
  arr_int.each do |el|
    largest_sum ||= el

    sum < 0 && el > 0 ? sum = el : sum += el


    sum = el if sum < 0

    largest_sum = sum if largest_sum < sum
  end

  largest_sum
end


def largest_contiguous_subsumv3(arr)
  largest_sum = nil
  j = 0
  i = 0
  while i < arr.length
    new_sum = arr[j..i].reduce(:+)
    largest_sum ||= new_sum
    if new_sum < 0
      j = i + 1
    end
    largest_sum = new_sum if new_sum > largest_sum
    i+= 1
  end

  largest_sum
end









#end
