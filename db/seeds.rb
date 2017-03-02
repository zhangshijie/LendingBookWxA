# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



2.times do |i|
   user = User.new
   user.name = "User ##{i}"
   user.avatar = "http://www.baidu.com"
   user.save
end


3.times do |i|
   book = Book.new
   book.title = "BOOK ##{i}"
   book.dsc = "I am dsc  ##{i}"
   book.url = "http://www.baidu.com ##{i}"
   book.img = "http://www.baidu.com/image ##{i}"
   book.save
end