class AddNameDescriptionToDemos < ActiveRecord::Migration[8.0]
  def change
    add_column :demos, :name, :string
    add_column :demos, :description, :string
  end
end
