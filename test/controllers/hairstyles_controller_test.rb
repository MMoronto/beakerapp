require "test_helper"

class HairstylesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hairstyle = hairstyles(:one)
  end

  test "should get index" do
    get hairstyles_url
    assert_response :success
  end

  test "should get new" do
    get new_hairstyle_url
    assert_response :success
  end

  test "should create hairstyle" do
    assert_difference('Hairstyle.count') do
      post hairstyles_url, params: { hairstyle: { duration: @hairstyle.duration, image_url: @hairstyle.image_url, price: @hairstyle.price, rating: @hairstyle.rating, salon_adress: @hairstyle.salon_adress, style: @hairstyle.style, user_id: @hairstyle.user_id } }
    end

    assert_redirected_to hairstyle_url(Hairstyle.last)
  end

  test "should show hairstyle" do
    get hairstyle_url(@hairstyle)
    assert_response :success
  end

  test "should get edit" do
    get edit_hairstyle_url(@hairstyle)
    assert_response :success
  end

  test "should update hairstyle" do
    patch hairstyle_url(@hairstyle), params: { hairstyle: { duration: @hairstyle.duration, image_url: @hairstyle.image_url, price: @hairstyle.price, rating: @hairstyle.rating, salon_adress: @hairstyle.salon_adress, style: @hairstyle.style, user_id: @hairstyle.user_id } }
    assert_redirected_to hairstyle_url(@hairstyle)
  end

  test "should destroy hairstyle" do
    assert_difference('Hairstyle.count', -1) do
      delete hairstyle_url(@hairstyle)
    end

    assert_redirected_to hairstyles_url
  end
end
