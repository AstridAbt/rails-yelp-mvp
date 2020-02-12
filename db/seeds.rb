puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "italian" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "chinese" }
aspic = { name: "Aspic", address: "2 Rue de la Tour d'Auvergne, 75009 Paris", category: "french" }
la_dame_de_pic = { name: "La Dame de Pic", address: "20 Rue du Louvre, 75001 Paris", category: "japanese" }
le_baudelaire = { name: "Le Baudelaire", address: "6-8 Rue Duphot, 75001 Paris", category: "belgian" }

[ dishoom, pizza_east, aspic, la_dame_de_pic, le_baudelaire ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
