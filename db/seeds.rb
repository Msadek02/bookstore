Author.delete_all
Book.delete_all
User.delete_all

# created an empty array for store all the categories
categories = []

# Loop over 20 times and add random books to the categories array
1.upto(20).each{ categories << Faker::Book.genre }


1.upto(20).each do |number|
  print '.'
  author = Author.create( 
				  	       id: number,
						   name: Faker::Name.name, 
						   email: Faker::Internet.email,
						   bio: Faker::Hipster.sentences, 
						   remote_avatar_url: Faker::Avatar.image
						   )
end


1.upto(200).each  do
  print '.'

  book = Book.create(
  	            name: Faker::Name.name, 
			  	remote_picture_url: Faker::Avatar.image, 
			  	author_id: rand(1..20), 
			  	publish_date: Faker::Time.between(DateTime.now - 1, DateTime.now), 
			  	price: Faker::Commerce.price, 
			  	description: Faker::Lorem.sentence, 
			  	inventory: Faker::Number.between(1, 30), 
			  	minimum_age: Faker::Number.between(3, 9), 
			  	maximum_age: Faker::Number.between(10, 20),
			  	)


    random_category1 = categories[Faker::Number.between(0, 19)]
    random_category2 = categories[Faker::Number.between(0, 19)]
	book.tag_list.add(random_category1, random_category2)
	book.save
end

1.upto(20).each do 
	print 's'
            User.create(
		          email: Faker::Internet.email,
		          password: Faker::Internet.password,
		          password_confirmation: Faker::Internet.password
		)
end