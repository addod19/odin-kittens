# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
kittens = Kitten.create([
    {
        name: 'Kitten 1',
        age: '3',
        cuteness: 'very cute',
        softness: ' not so soft'
    },
    {
        name: 'Kitten 2',
        age: '5',
        cuteness: 'cute',
        softness: 'so soft'
    },
    {
        name: 'Kitten 3',
        age: '1',
        cuteness: 'extremely cute',
        softness: 'soft'
    }

])