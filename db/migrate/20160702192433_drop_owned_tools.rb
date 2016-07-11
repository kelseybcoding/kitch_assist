class DropOwnedTools < ActiveRecord::Migration[5.0]
  def change
  	drop_table :owned_tools
  end
end
