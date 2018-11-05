class RenameAttributeToAttr < ActiveRecord::Migration[5.2]
  def change
    rename_table :attributes, :attrs
  end
end
