require 'test_helper'

class RequiredIngredientsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get required_ingredients_create_url
    assert_response :success
  end

end
