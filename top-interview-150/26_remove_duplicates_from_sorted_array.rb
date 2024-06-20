def remove_duplicates(nums)
  p nums
  nums_dupe = nums.dup
  inserted_nums = []
  i = 0
  j = 0
  while i < nums_dupe.length
    if inserted_nums.include? nums_dupe[i]
      i += 1
      next
    end
    nums[j] = nums_dupe[i]
    inserted_nums << nums_dupe[i]
    i += 1
    j += 1
  end

  p nums
  j
end

nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4, 7, 8]
remove_duplicates(nums)
