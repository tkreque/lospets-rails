require 'test_helper'

class PetTest < ActiveSupport::TestCase
  def setup
    #@pet = Pet.new(name: "Pet test", lat: 9.99, lng: 9.99)
    @pet = Pet.new(name: "Pet test", address:"Brasil,Porto Alegre,Rua General Vitorino 72")
  end

  test "should be valid" do
    assert @pet.valid?
  end
  
  test "name should be present" do
    @pet.name = "     "
    assert_not @pet.valid?
  end
  
  test "name should not be too long" do
    @pet.name = "a" * 51
    assert_not @pet.valid?
  end
end
