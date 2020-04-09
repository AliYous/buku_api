# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Book.create!(title: "turning pro", author: "steven pressfield", comment: "recommandé par Harry", status: "currently_reading" , purchased: true)
Book.create!(title: "the war of art", author: "steven pressfield", comment: "recommandé par Harry", status: "read" , purchased: true)
Book.create!(title: "rich dad poor dad", author: "robert kiyosaki", comment: "", status: "read" , purchased: true)
Book.create!(title: "how to fail at everything and still win big", author: "", comment: "", status: "read" , purchased: true)
Book.create!(title: "focal point", author: "brian tracy", comment: "", status: "to_read" , purchased: true)
Book.create!(title: "the 5 love languages", author: "", comment: "", status: "read" , purchased: true)
Book.create!(title: "unshakeable", author: "tony robbins", comment: "recommended by grant cardone", status: "to_read" , purchased: true)
Book.create!(title: "the 10x rule", author: "grant cardone", comment: "", status: "to_read" , purchased: false)
Book.create!(title: "the power of habit", author: "charles duhigg", comment: "recommended by rob dial", status: "to_read" , purchased: true)
Book.create!(title: "the magic of thinking bug", author: "Schwartz", comment: "Best book ever", status: "read" , purchased: true)
Book.create!(title: "be obsessed not average", author: "grant cardone", comment: "", status: "to_read" , purchased: false)
Book.create!(title: "jab, jab, jab, right hook", author: "gary vaynerchuck", comment: "", status: "to_read" , purchased: false)
Book.create!(title: "cry like a man", author: "jason wilson", comment: "", status: "to_read" , purchased: true)
Book.create!(title: "the art of persuasion", author: "bob burg", comment: "", status: "to_read" , purchased: false)




