# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'destroying restaurants'

Restaurant.destroy_all

restaurants = [
  { name: "Fufu",
    address: "37 Rue Saint Rémi",
    phone_number: "05 56 52 10 29",
    category: "japanese"
  },
  { name: "Pitaya",
    address: "42 Rue Saint-Rémi ",
    phone_number: "09 83 25 31 91",
    category: "chinese"
  },
  { name: "Le Pressoir d'Argent",
    address: "5 Place de la Comédie",
    phone_number: "05 57 30 43 04",
    category: "french"
  },
  { name: "Le Quatrième Mur",
    address: "Opéra National de Bordeaux",
    phone_number: "05 56 02 49 70",
    category: "french"
  },
  { name: "Peppone",
    address: "31 Cours Georges Clemenceau",
    phone_number: "05 56 44 91 05",
    category: "italian"
  }
]
puts 'seeding restaurants'
restaurants.each do |r|
  Restaurant.create!(r)
end
puts 'seed fucking done !'
