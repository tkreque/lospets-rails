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

tag_list = [
  [ "Filhote", "> 5 meses" ],         #1
  [ "Jovem", " > 1 ano" ],            #2
  [ "Adulto", " > 3 anos" ],          #3
  [ "Idoso", "> 5 anos" ],            #4
  [ "Pelo curto", "Pelo curto" ],     #5
  [ "Pelo longo", "Pelo longo" ],     #6
  [ "Porte Pequeno", "< 100cm" ],     #7
  [ "Porte Médio", "< 1m" ],          #8
  [ "Porte Grande", "< 2.5m" ]        #9
]

pet_tag_list = [
  [1,1],[1,5],[1,8],
  [2,3],[2,9],
  [3,1],[3,5],[3,7],
  [4,4],
  [5,2],[5,8],
  [6,2],
  [7,3],[7,6],[7,9],
  [8,1],
  [9,4],[9,5],
  [10,1],[10,6],[10,7],
  [11,4],[11,7],
  [12,2],[12,6],[12,9],
  [13,1],
  [14,1],[14,8],
  [15,2],[15,6],[15,9],
  [16,3],[16,6],
  [17,3],[17,5],[17,8],
  [18,5],
  [19,4],[19,9],
  [20,5],[20,7]
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

cat = "http://www.rd.com/wp-content/uploads/sites/2/2016/02/06-train-cat-shake-hands.jpg"
dog = "https://d1wn0q81ehzw6k.cloudfront.net/additional/thul/media/3af647cd1df71541?w=400&h=400"

pet_list = [
  ["Lilica","Rua General Vitorino, Porto Alegre",dog,"F",1,1],
  ["Saori","Rua 7 de Setembro, Porto Alegre",cat,"F",6,2],
  ["Luna","Avenida Setembrina, Porto Alegre",cat,"F",5,1],
  ["Yagami","Rua Sofia Veloso, Porto Alegre",dog,"M",2,3],
  ["Saya","Rua Barão do gravatai, Porto Alegre",dog,"F",1,2],
  ["Yumi","Rua General Lima e Silva, Porto Alegre",cat,"F",5,4],
  ["Mimico","Rua General Auto, Porto Alegre",dog,"M",3,1],
  ["Hulk","Rua Afonso Arinos, Porto Alegre",dog,"M",2,1],
  ["Preta","Avenida Venâncio Aires, Porto Alegre",dog,"F",3,3],
  ["Ursa","Avenida da Azenha, Porto Alegre",cat,"F",4,4],
  ["Branca","Rua Vasco da gama, Porto Alegre",cat,"F",5,3],
  ["Tina","Avenida augusto de carvalho, Porto Alegre",dog,"F",3,4],
  ["Shakira","Rua Joaquim Nabuco, Porto Alegre",dog,"F",2,1],
  ["Princesa","Rua da republica, Porto Alegre",dog,"F",1,2],
  ["Alemão","Avenida indepencendia, Porto Alegre",cat,"M",6,1],
  ["Naruto","Rua Ramiro Barcelos, Porto Alegre",cat,"M",5,4],
  ["Pipoca","Rua Dona Sofia, Porto Alegre",cat,"F",6,1],
  ["Izy","Rua Corrêa Lima, Porto Alegre",dog,"F",2,2],
  ["Ghost","Avenida Padre Cacique, Porto Alegre",cat,"M",4,1],
  ["Fiona","Rua Jatai, Porto Alegre",dog,"F",3,2]
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

pet_list.each do |v1,v2,v3,v4,v5,v6|
  Pet.create(name: v1, address: v2, photo: v3, sex: v4, race_id: v5, situation_id: v6)
end

tag_list.each do |v1,v2|
  Tag.create(tag: v1, description: v2)
end

pet_tag_list.each do |v1,v2|
  PetTag.create(id_pet: v1, id_tag: v2)
end