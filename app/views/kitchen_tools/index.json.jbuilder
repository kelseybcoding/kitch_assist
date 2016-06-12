json.array!(@kitchen_tools) do |kitchen_tool|
  json.extract! kitchen_tool, :id, :name, :type
  json.url kitchen_tool_url(kitchen_tool, format: :json)
end
