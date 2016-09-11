Author.delete_all
20.times do 
	author = Author.create(name: Faker::Name.name,
                           email: Faker::Internet.email,
                           bio: Faker::Hipster.sentences
		)
end

Book.delete_all
200.times do 
	Book.create(name: Faker::Name.name, 
		        picture: Faker::Avatar.image,
                author_id: Faker::Book.author,
                publish_date: Faker::Time.between(DateTime.now - 1, DateTime.now),
                price: Faker::Commerce.price,
                description: Faker::Lorem.sentence,
                minimum_age: Faker::Number.between(3, 9),
                maximum_age: Faker::Number.between(10, 20)	
		        )
end