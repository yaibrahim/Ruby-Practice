puts 'Hello Ibrahim'
x = 2

# if and else statement
if x < 4
  puts "its small"
else
  puts "its Big"
end

# Use Unless
unless x < 4
  puts "its small"
else
  puts "its Big"
end

# Switch Statement

a = 2
case a
when 1
    puts "One"
when 2
    puts "Two"
when 3
    puts "Three"
end

# until loop

a = 0
until a > 10
    puts "#{a}"
    a +=2
end

x = 15
until x <= 10
  puts x
  x -= 2
end

#Range

b = (1...22).to_a
puts b

# for loop

for i in (1..22)
  print i
end

# Arrays

arr1 = [1,2,3,4,6,1,23,90]
puts arr1
arr1 << 100
puts arr1
arr1.push(8)
puts arr1
arr1.pop
puts arr1
arr1.insert(0,0)
puts arr1

