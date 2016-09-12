Author.delete_all
Book.delete_all


1.upto(20).each do |number|
  author = Author.create( 
				  	       id: number,
						   name: Faker::Name.name, 
						   email: Faker::Internet.email,
						   bio: Faker::Hipster.sentences, 
						   remote_avatar_url: Faker::Avatar.image
						   )
end

1.upto(200).each  do
  Book.create(
  	            name: Faker::Name.name, 
			  	remote_picture_url: Faker::Avatar.image, 
			  	author_id: rand(1..20), 
			  	publish_date: Faker::Time.between(DateTime.now - 1, DateTime.now), 
			  	price: Faker::Commerce.price, 
			  	description: Faker::Lorem.sentence, 
			  	inventory: Faker::Number.between(1, 30), 
			  	minimum_age: Faker::Number.between(3, 9), 
			  	maximum_age: Faker::Number.between(10, 20)
  	)
end