require 'pry'

def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    current_line = katz_deli.map.with_index(1) do |customer, index|
      "#{index}. #{customer}"
    end
    puts "The line is currently: #{current_line.join(' ')}"
  end
end

katz_deli = ["Logan", "Avi", "Spencer"]
line(katz_deli)

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  no_in_line = katz_deli.length
  puts "Welcome, #{name}. You are number #{no_in_line} in line."
end

take_a_number(katz_deli, "Logan")
take_a_number(katz_deli, "Avi")
take_a_number(katz_deli, "Spencer")

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    being_served = katz_deli.shift
    puts "Currently serving #{being_served}."
  end
end

now_serving(katz_deli)
