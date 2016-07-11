class DropKitchenTools < ActiveRecord::Migration[5.0]
  def change
  	drop_table :kitchen_tools
  end
end
