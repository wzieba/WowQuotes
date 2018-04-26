# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

TEST_QUOTES = [
    "Help me, Obi-Wan Kenobi. You’re my only hope.",
    "I find your lack of faith disturbing.",
    "The Force will be with you. Always.",
    "Do. Or do not. There is no try.",
    "No. I am your father."
]

TEST_QUOTES.each do |quote|
  Quote.create({
                   text: quote
               })
end