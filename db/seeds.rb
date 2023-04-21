# Cleaning our database
Muscle.destroy_all

# Generating muscles
puts "Creating muscles"

Muscle.create(name: "Shoulders")
Muscle.create(name: "Legs")
Muscle.create(name: "Pectorals")

puts "Created #{Muscle.count} muscles"
