def min_sub_array_len(target, nums)
  l = 0
  r = 0
  window_amount = 0
  min_window_size = 1000000001

  while r < nums.size
    window_amount += nums[r]
    while window_amount - nums[l] >= target
      window_amount -= nums[l]
      l += 1
    end

    window_size = r - l + 1
    if window_amount >= target && window_size < min_window_size
      min_window_size = window_size
    end
    r += 1
  end

  (min_window_size == 1000000001) ? 0 : min_window_size
end

target = 11
nums = [1, 2, 3, 4, 5]
p min_sub_array_len(target, nums)
