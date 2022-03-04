# Number Frequency counter (Practice Codes)
arr3 = [1, 2, 3, 4, 1, 1, 1, 2, 3, 11, 11, 2, 33]
print arr3
puts ' '
freqs1 = {}
freqs1.default = 0
arr3.each { |c| freqs1[c] += 1 }
puts freqs1
