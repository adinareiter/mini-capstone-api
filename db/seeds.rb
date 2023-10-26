# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#hi
clothing = Clothing.create({
  name: "blue ribbed sweater",
  price: 20,
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKy5QX05h_b6ujVQeAK8nsImul10F9aSov-rG3Hdn8NXe2Dai51zGvHc2C-9bQUBooF38&usqp=CAU",
  description: "Wearing this sweater is like being inside a cloud.",
})
clothing.save

clothing = Clothing.create({
  name: "slippers",
  price: 15,
  image_url: "https://images.unsplash.com/photo-1603487742131-4160ec999306?auto=format&fit=crop&q=60&w=900&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c2xpcHBlcnN8ZW58MHx8MHx8fDA%3D",
  description: "Once you wear this unforgettable slippers, you won't be able to take them off.",
})
clothing.save

clothing = Clothing.new({
  name: "puffer jacket",
  price: 69,
  image_url: "https://media.istockphoto.com/id/1329845318/photo/brown-winter-down-jacket-front-and-back-view.webp?b=1&s=170667a&w=0&k=20&c=scug3grBM9jeGFFGEmm7fy5443qyPGsgz6qbjEQU_AE=",
  description: "This coat will keep you warm on the coldest winter day.",
})
clothing.save
