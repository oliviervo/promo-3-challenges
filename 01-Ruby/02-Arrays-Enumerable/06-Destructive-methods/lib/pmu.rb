def pmu_format!(race_array)
  #TODO: modify the given array so that it is PMU-consistent
    race_array = race_array.reverse!

    race_array.each_with_index do|name, index|
    x = race_array.index(#{name})- #{{name}"
  end
  puts "#{x}"
end


pmu_format!(["Abricot du Laudot", "Black Caviar", "Brigadier Gerard"])

