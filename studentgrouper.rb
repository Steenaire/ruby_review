def output_maker(new_students,n,group_count)
   puts "Group #{group_count}: #{new_students[n]} and #{new_students[n+1]}"
   group_count += 1
   n += 2
   return new_students,n,group_count
end

students = []
n = 1
response = ""

while response != "done"
 puts "Enter student number #{n} and enter 'done' when done:"
 n += 1
 response = gets.chomp
 break if response == "done"
 students << response
end

students = students.shuffle
n = 0
group_count = 1

while students.any?
  if students.length == 3
    group = students.pop(3)
  else
    group = students.pop(2)
  end
  puts "Group: #{group.join(', ')}"
end