Author.delete_all
author1 = Author.create name: 'Ahmed'
author2 = Author.create name: 'Mostafa'


Book.delete_all
Book.create! id: 1, name: "Banana", price: 0.49, author_id: author1.id, publish_date: Time.now
Book.create! id: 2, name: "Apple", price: 0.29, author_id: author2.id, publish_date: Time.now
Book.create! id: 3, name: "Carton of Strawberries", price: 1.99, author_id: author1.id, publish_date: Time.now

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"