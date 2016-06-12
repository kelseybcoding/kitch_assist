class CreateOwnedTools < ActiveRecord::Migration[5.0]
  def change
    create_table :owned_tools do |t|
      t.integer :member_id
      t.integer :kitchen_tool_id

      t.timestamps
    end
  end
end
