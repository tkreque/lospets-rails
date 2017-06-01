class StaticPagesController < ApplicationController
  def home
    @pets = Pet.all
    
    @hash = Gmaps4rails.build_markers(@pets) do |pet, marker|
      marker.lat pet.latitude
      marker.lng pet.longitude
      marker.title pet.name
      marker.picture ({ 
        :url => '/images/icons/icon.png',
        :width   => 32,
        :height  => 32,
      })
      marker.infowindow "<table><tr><td><img src='http://www.rd.com/wp-content/uploads/sites/2/2016/02/06-train-cat-shake-hands.jpg' style= 'border-radius: 50%; height:80px; width:80px;'></img><p><br /></td><td>" +
        "Nome: #{pet.name} <br />" +
        "Animal: #{pet.sex} <br />" +
        "Raça: #{pet.address} <br /></td></tr>" +
        "<tr><td><input class='btn btn-primary btn-block' type='button' value='Eu quero adotar' name='btn_perfil' onclick='BtnPerfil(#{pet.id})' /></td></tr></table>"
      
    end
  end
  
  def help
  end

  def about
  end
end
