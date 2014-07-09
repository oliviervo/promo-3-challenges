require_relative "wagon_sort"

students = []


begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name


  # TODO: Add the name we just got to the students array

students<<name

end while name != ""
students.delete("")



nombre=students.count
sorted_students=wagon_sort(students)
index_max=nombre-1


# TODO: Call `wagon_sort` method and display the sorted student list

puts "Congratulations! Your Wagon has #{nombre} students:"
puts "-" + " #{sorted_students[0..(index_max)-1].join(", ")}"+ " and " + "#{sorted_students[index_max]}"
