Author.delete_all
Comment.delete_all
Book.delete_all
OrderItem.delete_all
Order.delete_all
User.delete_all
ActsAsTaggableOn::Tag.destroy_all

# created an empty array for store all the categories
categories = []

# Loop over 20 times and add random books to the categories array
1.upto(20).each{ categories << Faker::Book.genre }

1.upto(20).each do |number|
  print '.'
  Author.create(
     id: number,
     name: Faker::Name.name,
     email: Faker::Internet.email,
     bio: Faker::Hipster.sentences,
     remote_avatar_url: 'http://profiledps.com/images/dps/full/dp_pictures-luxury-cars-profile-dps2014-10-28_02-41-50_2.jpg'
  )
end


1.upto(200).each  do
  print '.'

  book = Book.create(
    name: Faker::Name.name,
    remote_picture_url: 'http://profiledps.com/images/dps/full/dp_pictures-luxury-cars-profile-dps2014-10-28_02-41-50_2.jpg',
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

1.upto(20).each do |number|
  print 's'
  user = User.new(
    id: number,
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password',
    remote_image_url: 'http://profiledps.com/images/dps/full/dp_pictures-luxury-cars-profile-dps2014-10-28_02-41-50_2.jpg',
  )
  user.save
end
