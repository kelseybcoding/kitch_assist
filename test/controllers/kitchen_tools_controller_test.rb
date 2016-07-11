require 'test_helper'

class KitchenToolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kitchen_tool = kitchen_tools(:one)
  end

  test "should get index" do
    get kitchen_tools_url
    assert_response :success
  end

  test "should get new" do
    get new_kitchen_tool_url
    assert_response :success
  end

  test "should create kitchen_tool" do
    assert_difference('KitchenTool.count') do
      post kitchen_tools_url, params: { kitchen_tool: { name: @kitchen_tool.name, type: @kitchen_tool.type } }
    end

    assert_redirected_to kitchen_tool_path(KitchenTool.last)
  end

  test "should show kitchen_tool" do
    get kitchen_tool_url(@kitchen_tool)
    assert_response :success
  end

  test "should get edit" do
    get edit_kitchen_tool_url(@kitchen_tool)
    assert_response :success
  end

  test "should update kitchen_tool" do
    patch kitchen_tool_url(@kitchen_tool), params: { kitchen_tool: { name: @kitchen_tool.name, type: @kitchen_tool.type } }
    assert_redirected_to kitchen_tool_path(@kitchen_tool)
  end

  test "should destroy kitchen_tool" do
    assert_difference('KitchenTool.count', -1) do
      delete kitchen_tool_url(@kitchen_tool)
    end

    assert_redirected_to kitchen_tools_path
  end
end
