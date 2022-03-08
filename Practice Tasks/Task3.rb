puts "Enter Desired Length of password"
n = gets.to_i
puts "Enter Length of alphabets less than or equal to 26"
alpha_length = gets.to_i
puts "Enter Length of numerical less than or equal to 10"
num_length = gets.to_i
puts "Enter Length of symbols less than or equal to 20"
symbols_length = gets.to_i

numeric = "0123456789"
alphabets_small = "abcdefghijklmnopqrstuvwxyz"
alphabets_large = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
symbols = "!@#$%^&*/+-`~?><:;|."

#puts alpha_length , alphabets_large.length() , alpha_length , alphabets_small.length() , num_length , numeric.length() , symbols_length , symbols.length()

if alpha_length <= alphabets_large.length() && alpha_length <= alphabets_small.length() && num_length <= numeric.length() && symbols_length <= symbols.length()

  #puts numeric[0,num_length] + alphabets_small[0,alpha_length] + alphabets_large[0,alpha_length] +symbols[0,symbols_length]
  passItems = numeric[0,num_length] + alphabets_small[0,alpha_length] + alphabets_large[0,alpha_length] +symbols[0,symbols_length]
  password = ""
  i=0

  if n >= 7 && n <= passItems.length()
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

   flag = false
   File.readlines("passwords1.csv").each {
      |line|
      #puts " --- #{line}"
      if password == line
        flag = true
      else
        flag = false
        #puts "no found in record"
      end
    }

   if flag == false
     pass_file = File.new("passwords1.csv", "a")
     pass_file.puts(password)
     pass_file.close

     puts "Password Generated And save in file successfully"
     #read_file = File.read("passwords1.csv")
     #puts read_file
   else
     puts "Password already exist in record!!"
   end
 else
   puts "The Length of Password should be greater than equal to 7"
 end

else
   puts "Check your input of numeric , alphabet and sysmbols length...
   \n alphabets actual length is 26  \n Numerics are 10 \n symbols are 20"
end
