# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
puts 'Creating 10 quotes...'
FactoryBot.create_list(:quote, 10)
puts "You now have #{Quote.count} quotes!"
