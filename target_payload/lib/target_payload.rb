def find_target(payload, target)
  store = {}
  return [] if payload.size < 2

  payload.each do |i|
    next if store.key?(i)
    if store[target - i]
      return store[target - i] << i
    end
    store[i] = [i]
  end
  return []
end
