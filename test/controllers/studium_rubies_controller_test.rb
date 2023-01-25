require "test_helper"

class StudiumRubiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studium_ruby = studium_rubies(:one)
  end

  test "should get index" do
    get studium_rubies_url
    assert_response :success
  end

  test "should get new" do
    get new_studium_ruby_url
    assert_response :success
  end

  test "should create studium_ruby" do
    assert_difference("StudiumRuby.count") do
      post studium_rubies_url, params: { studium_ruby: { Email: @studium_ruby.Email, First_name: @studium_ruby.First_name, Instagram: @studium_ruby.Instagram, Last_Name: @studium_ruby.Last_Name, Phone: @studium_ruby.Phone } }
    end

    assert_redirected_to studium_ruby_url(StudiumRuby.last)
  end

  test "should show studium_ruby" do
    get studium_ruby_url(@studium_ruby)
    assert_response :success
  end

  test "should get edit" do
    get edit_studium_ruby_url(@studium_ruby)
    assert_response :success
  end

  test "should update studium_ruby" do
    patch studium_ruby_url(@studium_ruby), params: { studium_ruby: { Email: @studium_ruby.Email, First_name: @studium_ruby.First_name, Instagram: @studium_ruby.Instagram, Last_Name: @studium_ruby.Last_Name, Phone: @studium_ruby.Phone } }
    assert_redirected_to studium_ruby_url(@studium_ruby)
  end

  test "should destroy studium_ruby" do
    assert_difference("StudiumRuby.count", -1) do
      delete studium_ruby_url(@studium_ruby)
    end

    assert_redirected_to studium_rubies_url
  end
end
