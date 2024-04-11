require "application_system_test_case"

class DemandesTest < ApplicationSystemTestCase
  setup do
    @demande = demandes(:one)
  end

  test "visiting the index" do
    visit demandes_url
    assert_selector "h1", text: "Demandes"
  end

  test "should create demande" do
    visit demandes_url
    click_on "New demande"

    fill_in "Icon", with: @demande.icon
    fill_in "Image", with: @demande.image
    fill_in "Name", with: @demande.name
    click_on "Create Demande"

    assert_text "Demande was successfully created"
    click_on "Back"
  end

  test "should update Demande" do
    visit demande_url(@demande)
    click_on "Edit this demande", match: :first

    fill_in "Icon", with: @demande.icon
    fill_in "Image", with: @demande.image
    fill_in "Name", with: @demande.name
    click_on "Update Demande"

    assert_text "Demande was successfully updated"
    click_on "Back"
  end

  test "should destroy Demande" do
    visit demande_url(@demande)
    click_on "Destroy this demande", match: :first

    assert_text "Demande was successfully destroyed"
  end
end
