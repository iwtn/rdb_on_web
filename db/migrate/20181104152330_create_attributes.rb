class CreateAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :attributes do |t|
      t.references :relation, foreign_key: true
      t.string :name
      t.string :attr_type

      t.timestamps
    end
  end
end
