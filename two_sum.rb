require 'byebug'

def bad_two_sum?(arr, target)
  arr.each_index do |idx1|
    arr.each_index do |idx2|
      next if idx2 <= idx1
      if arr[idx1] + arr[idx2] == target
        return true
      end
    end
  end

  false
end

#  Complexity
#  Space O(1)
#  Time O(n^2)
#
#
def ok_two_sum?(arr, target)
  new_array = arr.sort

  bsearch(new_array, target)


  arr.each do |el|
    return true if bsearch(arr, target - el)
  end
  false
end
#  Complexity
#  Space O(n^2)
#  Time O(n log n)
#
#

def bsearch(arr, target)
  return nil if arr.length == 0
  mid = arr.length/2

  if target < mid
    bsearch(arr.take(mid), target)
  elsif target == arr[mid]
    return true
  else
    search_res = bsearch(arr.drop(mid + 1), target)
    search_res.nil? ? false : true
  end
end

def two_sum(arr, target)
  browns = {}
  arr.each do |el|
    return true unless browns[el].nil?
    browns[target - el] = true
  end

  false
end
#  Complexity
#  Space O(1)
#  Time O(n)
#
#
















#end
