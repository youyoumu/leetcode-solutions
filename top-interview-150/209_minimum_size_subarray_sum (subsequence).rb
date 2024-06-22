def min_sub_array_len(target, nums)
  return 1 if nums.include? target

  min_length = 2
  while min_length <= nums.length
    i = []
    (0..min_length - 1).each do |j|
      i.push j
    end

    return min_length if sum_sub_array_equal_or_greater?(nums, i, nums.length, target)
    min_length += 1
  end
  0
end

def sum_sub_array_equal_or_greater?(nums, i, length, target)
  new_nums = []
  i.each do |i|
    new_nums.push nums[i]
  end
  p new_nums
  if new_nums.sum >= target
    true
  else
    i = next_index(i, length, 1)
    return false if i == false
    sum_sub_array_equal_or_greater?(nums, i, length, target)
  end
end

def next_index(i, length, n)
  return false if i.length - n < 0
  if i[i.length - n] + 1 >= length || (!i[i.length - n + 1].nil? && i[i.length - n] + 1 >= i[i.length - n + 1])
    i = next_index(i, length, n + 1)
  else
    i[i.length - n] = i[i.length - n] + 1
    i[i.length - n + 1] = i[i.length - n] + 1 if (i.length - n + 1) < i.length
  end
  i
end

# p next_index([0, 4, 5], 6, 1)

# i = [0, 1, 2]
# while i != false
#   p i = next_index(i, 6, 1)
# end

target = 213
nums = [12, 28, 83, 4, 25, 26, 25, 2, 25, 25, 25, 12]
p min_sub_array_len(target, nums)

p [12, 28, 83, 25, 25, 25, 25].sum
