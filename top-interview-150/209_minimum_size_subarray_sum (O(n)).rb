def min_sub_array_len(target, nums)
  nums.each do |num|
    return 1 if num >= target
  end

  min_length = 2
  while min_length <= nums.length
    return min_length if sum_sub_array_equal_or_greater?(nums, 0, min_length, target)
    min_length += 1
  end
  0
end

def sum_sub_array_equal_or_greater?(nums, i, min_length, target)
  new_nums = []
  (i..i + min_length - 1).each do |j|
    new_nums.push nums[j]
  end
  if new_nums.sum >= target
    true
  else
    return false if i + min_length >= nums.length
    sum_sub_array_equal_or_greater?(nums, i + 1, min_length, target)
  end
end

target = 7
nums = [2, 3, 1, 2, 4, 3]
p min_sub_array_len(target, nums)
