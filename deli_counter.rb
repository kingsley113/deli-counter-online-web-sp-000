# Write your code here.

katz_deli = []

def line(array)
  if array.length == 0
    puts "The line is currently empty."
  else
    counter = 0
    print "The line is currently: "
    array.each do | customer, position |
      customer = array[counter]
      position = counter + 1
      counter += 1
      print "#{position}. #{customer}\n"
    end
  end
end

def take_a_number(katz_deli, new_customer)
  katz_deli << new_customer
  position = katz_deli.length
  puts "Welcome, #{new_customer}. You are number #{position} in line."
end

def now_serving(katz_deli)
  if katz_deli.length != 0
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  else
    puts "There is nobody waiting to be served!"
  end
end
