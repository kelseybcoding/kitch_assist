class RenameTypeInKitchenTool < ActiveRecord::Migration[5.0]
  def change
  	rename_column :kitchen_tools, :type, :classification
  end
end
