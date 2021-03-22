require "application_system_test_case"

class HairstylesTest < ApplicationSystemTestCase
  setup do
    @hairstyle = hairstyles(:one)
  end

  test "visiting the index" do
    visit hairstyles_url
    assert_selector "h1", text: "Hairstyles"
  end

  test "creating a Hairstyle" do
    visit hairstyles_url
    click_on "New Hairstyle"

    fill_in "Duration", with: @hairstyle.duration
    fill_in "Image url", with: @hairstyle.image_url
    fill_in "Price", with: @hairstyle.price
    fill_in "Rating", with: @hairstyle.rating
    fill_in "Salon adress", with: @hairstyle.salon_adress
    fill_in "Style", with: @hairstyle.style
    fill_in "User", with: @hairstyle.user_id
    click_on "Create Hairstyle"

    assert_text "Hairstyle was successfully created"
    click_on "Back"
  end

  test "updating a Hairstyle" do
    visit hairstyles_url
    click_on "Edit", match: :first

    fill_in "Duration", with: @hairstyle.duration
    fill_in "Image url", with: @hairstyle.image_url
    fill_in "Price", with: @hairstyle.price
    fill_in "Rating", with: @hairstyle.rating
    fill_in "Salon adress", with: @hairstyle.salon_adress
    fill_in "Style", with: @hairstyle.style
    fill_in "User", with: @hairstyle.user_id
    click_on "Update Hairstyle"

    assert_text "Hairstyle was successfully updated"
    click_on "Back"
  end

  test "destroying a Hairstyle" do
    visit hairstyles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hairstyle was successfully destroyed"
  end
end
