class DropDemos < ActiveRecord::Migration[8.0]
  def change
    drop_table :demos
  end
end
