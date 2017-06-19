# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

situation_list = [
  [ "Perdido", "red" ],
  [ "Encontrado", "green" ],
  [ "Avistado", "yellow" ],
  [ "Adoção", "blue" ]
]

animal_list = [
  [ "Cachorro", "dog" ],
  [ "Gato", "cat" ],
  [ "Coelho", "bunny" ],
  [ "Porco", "pig" ],
  [ "Passaro", "bird" ]
]

race_list = [
  [ "Golden", 1 ],
  [ "Buldog", 1 ],
  [ "Vira-lata", 1 ],
  [ "Siames", 2 ],
  [ "Persa", 2 ],
  [ "Vira-lata", 2 ]
]

situation_list.each do |sit, icon|
  Situation.create( situation: sit, iconColor: icon )
end

animal_list.each do |an, icon|
  Animal.create( animal: an, iconDraw: icon )
end

race_list.each do |rc, an|
  Race.create( race: rc, animal_id: an )
end

Pet.create(
    name: "Lilica",
    address: "Rua General Vitorino 72, Porto Alegre",
    photo: "https://d1wn0q81ehzw6k.cloudfront.net/additional/thul/media/3af647cd1df71541?w=400&h=400",
    sex: "F",
    race_id: 1,
    situation_id: 1
)
Pet.create(
    name: "Saori",
    address: "Rua 7 de setembro 163, Porto Alegre",
    photo: "http://www.rd.com/wp-content/uploads/sites/2/2016/02/06-train-cat-shake-hands.jpg",
    sex: "F",
    race_id: 6,
    situation_id: 2
)
Pet.create(
    name: "Luna",
    address: "Avenida Setembrina, Porto Alegre",
    photo: "http://www.rd.com/wp-content/uploads/sites/2/2016/02/06-train-cat-shake-hands.jpg",
    sex: "F",
    race_id: 5,
    situation_id: 1
)
Pet.create(
    name: "Yagami",
    address: "Rua Sofia Veloso, Porto Alegre",
    photo: "https://d1wn0q81ehzw6k.cloudfront.net/additional/thul/media/3af647cd1df71541?w=400&h=400",
    sex: "M",
    race_id: 2,
    situation_id: 3
)
Pet.create(
    name: "Saya",
    address: "Rua Barão do gravatai, Porto Alegre",
    photo: "https://d1wn0q81ehzw6k.cloudfront.net/additional/thul/media/3af647cd1df71541?w=400&h=400",
    sex: "F",
    race_id: 1,
    situation_id: 2
)
Pet.create(
    name: "Yumi",
    address: "Rua General lima e silva, Porto Alegre",
    photo: "http://www.rd.com/wp-content/uploads/sites/2/2016/02/06-train-cat-shake-hands.jpg",
    sex: "F",
    race_id: 5,
    situation_id: 4
)
Pet.create(
    name: "Mimico",
    address: "Rua General Auto, Porto Alegre",
    photo: "https://d1wn0q81ehzw6k.cloudfront.net/additional/thul/media/3af647cd1df71541?w=400&h=400",
    sex: "M",
    race_id: 3,
    situation_id: 1
)

