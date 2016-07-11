class CreateRequiredTools < ActiveRecord::Migration[5.0]
  def change
    create_table :required_tools do |t|
      t.integer :recipe_id
      t.integer :kitchen_tool_id

      t.timestamps
    end
  end
end
