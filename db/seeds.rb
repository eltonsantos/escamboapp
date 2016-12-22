# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cadastrando as categorias..."
categories = [ "Animais e acessórios", "Esporte", "Imóveis", "Para a sua casa", "Veículos e barcos", "Música e hobbies", "Bebês e crianças", "Moda e beleza", "Eletrônicos e celulares", "Empregos e negócios" ]

categories.each do |category|
  Category.find_or_create_by(description: category)
end

puts "Categorias cadastradas com sucesso!"