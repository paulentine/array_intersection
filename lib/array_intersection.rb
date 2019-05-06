# Returns a new array to that contains elements in the intersection of the two input arrays
# Time complexity: O(n) to hash in, O(m) to look up, where n is length of array1 and m is length of array 2
# Space complexity: O(n) to add to hash table, O(n) for results array
def intersection(array1, array2)
  intersection = []
  return intersection if !array1 || !array2
  if array1.length < array2.length
    smaller = array1
    larger = array2
  else
    smaller = array2
    larger = array1
  end

  my_hash = {}
  smaller.each do |num|
    my_hash[num] = 1
  end

  larger.each do |num|
    intersection << num if my_hash.include?(num)
  end
  return intersection
end
