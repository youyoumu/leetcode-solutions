def is_palindrome(s)
  s.downcase!
  s_array = s.chars
  s_array.map! do |w|
    if (w.ord >= 97 && w.ord <= 122) || (w.ord >= 48 && w.ord <= 57)
      w.ord
    end
  end
  s_array.select! do |int|
    !int.nil?
  end
  s_array_dupe = s_array.dup
  s_array_dupe.reverse!
  p is_palindrome = s_array == s_array_dupe
  is_palindrome
end

s = "0P"
is_palindrome s
