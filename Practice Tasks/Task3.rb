numeric = "0123456789"
alphabets_small = "abcdefghijklmnopqrstuvwxyz"
alphabets_large = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
symbols = "!@#$%^&*"

puts numeric + alphabets_small + alphabets_large +symbols
passItems = numeric + alphabets_small + alphabets_large +symbols

password = ""
i=0
n = 10
while (i < n)
  rand_value = rand 0..passItems.length()-1
  # puts rand_value
  password += passItems[rand_value]
  i = i + 1
end

puts "Random Generated Password: "
if(password.length() > 0)
  puts password
else
  puts "Unable to generate password"
end

pass_file = File.new("passwords1.csv", "a")
pass_file.puts(password)
pass_file.close

read_file = File.read("passwords1.csv")
puts read_file


