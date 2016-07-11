require 'test_helper'

class PantryItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get pantry_items_create_url
    assert_response :success
  end

end
