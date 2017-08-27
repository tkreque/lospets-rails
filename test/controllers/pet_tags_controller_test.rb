require 'test_helper'

class PetTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pet_tag = pet_tags(:one)
  end

  test "should get index" do
    get pet_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_pet_tag_url
    assert_response :success
  end

  test "should create pet_tag" do
    assert_difference('PetTag.count') do
      post pet_tags_url, params: { pet_tag: { id_pet: @pet_tag.id_pet, id_tag: @pet_tag.id_tag } }
    end

    assert_redirected_to pet_tag_url(PetTag.last)
  end

  test "should show pet_tag" do
    get pet_tag_url(@pet_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_pet_tag_url(@pet_tag)
    assert_response :success
  end

  test "should update pet_tag" do
    patch pet_tag_url(@pet_tag), params: { pet_tag: { id_pet: @pet_tag.id_pet, id_tag: @pet_tag.id_tag } }
    assert_redirected_to pet_tag_url(@pet_tag)
  end

  test "should destroy pet_tag" do
    assert_difference('PetTag.count', -1) do
      delete pet_tag_url(@pet_tag)
    end

    assert_redirected_to pet_tags_url
  end
end
