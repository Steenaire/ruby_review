puts "How many students are in the class?"
student_number = gets.chomp.to_i

students = []

student_number.times do |n|
  puts "Enter student number #{n+1}:"
  students << gets.chomp
end

students.shuffle!

if students.length % 2 == 0
  group = []
  counter = 0
  students.each do |student|
    group << student
    counter += 1
    if counter == 1
      puts "Group: #{group}"
      group = []
    end
  end
end

puts students