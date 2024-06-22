def min_sub_array_len(target, nums)
  min_length = 1
  while min_length <= nums.length
    new_nums = []
    (0..min_length - 1).each do |j|
      new_nums.push nums[j]
    end
    new_sum = new_nums.sum
    return min_length if new_sum >= target

    i = 0
    while i + min_length < nums.length
      new_sum = new_sum - nums[i] + nums[i + min_length]
      return min_length if new_sum >= target
      i += 1
    end
    min_length += 1
  end
  0
end

target = 11
nums = [1, 2, 3, 4, 5]
p min_sub_array_len(target, nums)
