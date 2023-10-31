# Supplier.create!([
#   { name: "Adidas", email: "adidas@example.com", phone_number: "1234567891" },
#   { name: "Puma", email: "puma@example.com", phone_number: "3334445555" },
# ])
# Clothing.create!([
#   { name: "slippers", price: "15.0", image_url: "https://images.unsplash.com/photo-1603487742131-4160ec999306?auto=format&fit=crop&q=60&w=900&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c2xpcHBlcnN8ZW58MHx8MHx8fDA%3D", description: "Once you wear this unforgettable slippers, you won't be able to take them off.", stock: 50, supplier_id: 2 },
#   { name: "puffer jacket", price: "69.0", image_url: "https://media.istockphoto.com/id/1329845318/photo/brown-winter-down-jacket-front-and-back-view.webp?b=1&s=170667a&w=0&k=20&c=scug3grBM9jeGFFGEmm7fy5443qyPGsgz6qbjEQU_AE=", description: "This coat will keep you warm on the coldest winter day.", stock: 50, supplier_id: 2 },
#   { name: "blue ribbed sweater", price: "20.0", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKy5QX05h_b6ujVQeAK8nsImul10F9aSov-rG3Hdn8NXe2Dai51zGvHc2C-9bQUBooF38&usqp=CAU", description: "Wearing this sweater is like being inside a cloud.", stock: 50, supplier_id: 1 },
#   { name: "t-shirt", price: "20.0", image_url: "https://media.istockphoto.com/id/1347667305/photo/blank-sweatshirt-mock-up-in-front-and-back-views.webp?b=1&s=170667a&w=0&k=20&c=NZW8dm1yB2iZMmapyNG3qT1d-lokMwpHXHVBkRJmnhg=", description: "long sleeved crew neck t-shirt black", stock: 50, supplier_id: 1 },
# ])

# image = Image.create({
#   url: "https://images.unsplash.com/photo-1603487742131-4160ec999306?auto=format&fit=crop&q=60&w=900&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c2xpcHBlcnN8ZW58MHx8MHx8fDA%3D",
#   clothing_id: 1,
# })

image = Image.create({
  url: "https://media.istockphoto.com/id/1329845318/photo/brown-winter-down-jacket-front-and-back-view.webp?b=1&s=170667a&w=0&k=20&c=scug3grBM9jeGFFGEmm7fy5443qyPGsgz6qbjEQU_AE=",
  clothing_id: 2,
})
image = Image.create({
  url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKy5QX05h_b6ujVQeAK8nsImul10F9aSov-rG3Hdn8NXe2Dai51zGvHc2C-9bQUBooF38&usqp=CAU",
  clothing_id: 3,
})
image = Image.create({
  url: "https://media.istockphoto.com/id/1347667305/photo/blank-sweatshirt-mock-up-in-front-and-back-views.webp?b=1&s=170667a&w=0&k=20&c=NZW8dm1yB2iZMmapyNG3qT1d-lokMwpHXHVBkRJmnhg=",
  clothing_id: 4,
})
