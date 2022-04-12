def find_matches(arr1, arr2, arr3)
  length = arr1.size
  store = Hash.new(0)
  matches = []

  length.times do |i|
    store[arr1[i]] += 1
    store[arr2[i]] += 1
    store[arr3[i]] += 1
  end

  store.each_pair do |k, v|
    matches << k if v == 3
  end

  return matches
end
