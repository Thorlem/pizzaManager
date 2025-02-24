require "test_helper"

class ToppingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    Topping.destroy_all
    @topping = Topping.create!(name: "Test Topping")
  end

  test "should get index" do
    get toppings_url
    assert_response :success
  end

  test "should get new" do
    get new_topping_url
    assert_response :success
  end

  test "should create topping" do
    assert_difference("Topping.count") do
      post toppings_url, params: { topping: { name: "Test" } }
    end

    assert_redirected_to topping_url(Topping.last)
  end

  test "should show topping" do
    get topping_url(@topping)
    assert_response :success
  end

  test "should get edit" do
    get edit_topping_url(@topping)
    assert_response :success
  end

  test "should update topping" do
    patch topping_url(@topping), params: { topping: { name: "Different name" } }

    @topping.reload

    assert_equal @topping.name, "Different name"
    assert_redirected_to topping_url(@topping)
  end

  test "should destroy topping" do
    assert_difference("Topping.count", -1) do
      delete topping_url(@topping)
    end

    assert_redirected_to toppings_url
  end
end
