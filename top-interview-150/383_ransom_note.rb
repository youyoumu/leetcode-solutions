def can_construct(ransom_note, magazine)
  ransom_note_array = ransom_note.chars
  magazine_array = magazine.chars
  ransom_note_hash = {}
  ransom_note_array.each do |let|
    ransom_note_hash[let] ? ransom_note_hash[let][:count] += 1 : ransom_note_hash[let] = {value: let, count: 1}
  end
  magazine_hash = {}
  magazine_array.each do |let|
    magazine_hash[let] ? magazine_hash[let][:count] += 1 : magazine_hash[let] = {value: let, count: 1}
  end
  ransom_note_array.each do |let|
    return false if magazine_hash[let].nil? || ransom_note_hash[let][:count] > magazine_hash[let][:count]
  end
  true
end

ransom_note = "aa"
magazine = "aab"
can_construct(ransom_note, magazine)
