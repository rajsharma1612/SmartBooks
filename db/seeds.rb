# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
#
# Book.create(title:'Java: The Complete Reference',author:'Herbert Schildt',category:'Programming',
# description:'Fully updated for Java SE 8, Java: The Complete Reference, Ninth Edition explains how to develop, compile, debug, and run Java programs. Bestselling programming author Herb Schildt covers the entire Javalanguage, including its syntax, keywords, and fundamental programming principles, as well as significant portions of the Java API library. JavaBeans, servlets, applets, and Swing are examined and real-world examples demonstrate Java in action. New Java SE 8 features such as lambda expressions, the stream library, and the default interface method are discussed in detail.
# This Oracle Press resource also offers a solid introduction to JavaFX.',
# logo_url:'http://ecx.images-amazon.com/images/I/516CL5AVKVL._SX406_BO1,204,203,200_.jpg',
# pdf_file_url:'http://iiti.ac.in/people/~tanimad/JavaTheCompleteReference.pdf')

# require 'csv'
#
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'booksdata.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = Transaction.new
#   t.title = row['title']
#   t.author = row['author']
#   t.category = row['category']
#   t.description = row['description']
#   t.logo_url = row['logo_url']
#   t.pdf_file_url = row['pdf_file_url']
#   t.save
#   puts "#{t.title}, #{t.pdf_file_url} saved"
# end

# puts "There are now #{Transaction.count} rows in the transactions table"

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'booksdata.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  Book.create!(row.to_hash)
end
