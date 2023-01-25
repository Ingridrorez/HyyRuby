require "application_system_test_case"

class StudiumRubiesTest < ApplicationSystemTestCase
  setup do
    @studium_ruby = studium_rubies(:one)
  end

  test "visiting the index" do
    visit studium_rubies_url
    assert_selector "h1", text: "Studium rubies"
  end

  test "should create studium ruby" do
    visit studium_rubies_url
    click_on "New studium ruby"

    fill_in "Email", with: @studium_ruby.Email
    fill_in "First name", with: @studium_ruby.First_name
    fill_in "Instagram", with: @studium_ruby.Instagram
    fill_in "Last name", with: @studium_ruby.Last_Name
    fill_in "Phone", with: @studium_ruby.Phone
    click_on "Create Studium ruby"

    assert_text "Studium ruby was successfully created"
    click_on "Back"
  end

  test "should update Studium ruby" do
    visit studium_ruby_url(@studium_ruby)
    click_on "Edit this studium ruby", match: :first

    fill_in "Email", with: @studium_ruby.Email
    fill_in "First name", with: @studium_ruby.First_name
    fill_in "Instagram", with: @studium_ruby.Instagram
    fill_in "Last name", with: @studium_ruby.Last_Name
    fill_in "Phone", with: @studium_ruby.Phone
    click_on "Update Studium ruby"

    assert_text "Studium ruby was successfully updated"
    click_on "Back"
  end

  test "should destroy Studium ruby" do
    visit studium_ruby_url(@studium_ruby)
    click_on "Destroy this studium ruby", match: :first

    assert_text "Studium ruby was successfully destroyed"
  end
end
