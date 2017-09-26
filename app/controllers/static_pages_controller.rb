class StaticPagesController < ApplicationController
  def home
    @pets = Pet.all
    @situations = Situation.all
    @animals = Animal.all
    
    @hash = Gmaps4rails.build_markers(@pets) do |pet, marker|
      
      animal = Animal.find(Race.find(pet.race_id).animal_id).animal
      race = Race.find(pet.race_id).race
      situation = Situation.find(pet.situation_id).situation
      tags = PetTag.where(id_pet: pet.id)
      
      tagsName = []
      for t in tags
          tagsName.push(Tag.find(t.id_tag).tag)
      end
      
      allTagsName = tagsName.join(",")
      
      iconDraw = Animal.find(Race.find(pet.race_id).animal_id).iconDraw
      iconColor = Situation.find(pet.situation_id).iconColor
      
      marker.lat pet.latitude
      marker.lng pet.longitude
      marker.title pet.name
      marker.picture ({ 
        :url => "/images/icons/#{iconColor}/#{iconDraw}.png",
        :width   => 32,
        :height  => 32,
      })
      marker.infowindow "<table><tr><td><img src='#{pet.photo}' style= 'border-radius: 50%; height:80px; width:80px;'></img><p><br /></td><td>" +
        "Nome: #{pet.name} <br />" +
        "Animal: #{animal} <br />" +
        "Raça: #{race} <br />"+
        "Situação: #{situation} <br />" +
        "Endereço: #{pet.address} <br />" +
        "Tags: #{allTagsName} <br /></td></tr>" +
        "<tr><td><input class='btn btn-primary btn-block' type='button' value='Visualizar perfil' name='btn_perfil' onclick='redirectPet(#{pet.id})' /></td></tr></table>"
    end
  end
  
  def help
  end

  def about
  end
  
end
