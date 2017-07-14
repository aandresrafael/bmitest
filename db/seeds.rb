# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  { description: 'Very severely underweight', start: 0.0, end: 15 },
  { description: 'Severely underweight', start: 15, end: 16 },
  { description: 'Underweight', start: 16, end: 18.5 },
  { description: 'Normal (healthy weight)', start: 18.5, end: 25 },
  { description: 'Overweight', start: 25, end: 30 },
  { description: 'Obese Class I (Moderately obese)', start: 30, end: 35 },
  { description: 'Obese Class II (Severely obese)', start: 35, end: 40 },
  { description: 'Obese Class III (Very severely obese)', start: 40, end: 100 },
].each do |category|
  Category.create(category)
end

puts "-- #{Category.count} categories created."
