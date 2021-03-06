Product.create(name: "Earl Grey Tea", price: 8, image_url: "https://www.englishteastore.com/media/catalog/product/cache/6/image/9df78eab33525d08d6e5fb8d27136e95/T/H/THAS_31603_-00_harney-and-sons-white-earl-grey-tea-tin-20-sachets.jpg", description: "black tea that tastes like orange and lemon")
Product.create(name: "La Croix Mango", price: 4, image_url: "https://d2lnr5mha7bycj.cloudfront.net/product-image/file/large_5f6fa02b-6d34-4052-83ff-6493e8bcf313.png", description: "mango flavored sparkling water")
Product.create(name: "Nutella", price: 10, image_url: "https://pbs.twimg.com/profile_images/659190670477783040/yoWmzwig.jpg", description: "hazelnut spread")
Product.create(name: "Garrett Popcorn", price: 8, image_url: "https://s3.amazonaws.com/cdn.tastesofchicago.com/images/uploads/category_472_4837.jpg", description: "caramel flavored popcorn")

Supplier.create(name: "Ron Sawnson", email: "food@food.com", phone_number: "555-5555")
Supplier.create(name: "Ben Wyatt", email: "drinks@drinks.com", phone_number: "555-1111")

Image.create(url: "https://www.englishteastore.com/media/catalog/product/cache/6/image/9df78eab33525d08d6e5fb8d27136e95/T/H/THAS_31603_-00_harney-and-sons-white-earl-grey-tea-tin-20-sachets.jpg", product_id: 1)
Image.create(url: "https://d2lnr5mha7bycj.cloudfront.net/product-image/file/large_5f6fa02b-6d34-4052-83ff-6493e8bcf313.png", product_id: 2)
Image.create(url: "https://www.nutella.com/nutella-gl-theme/images/custom/Nutella.png", product_id: 3)
Image.create(url: "https://cfcdn2.azsg.opensnap.com/azsg/snapphoto/photo/LB/GUFF/3BSDO2247D61C10C31F685lv.jpg", product_id: 4)
