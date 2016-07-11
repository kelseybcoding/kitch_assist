class DropRequiredTools < ActiveRecord::Migration[5.0]
  def change
  	drop_table :required_tools
  end
end
