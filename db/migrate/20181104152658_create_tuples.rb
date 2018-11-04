class CreateTuples < ActiveRecord::Migration[5.2]
  def change
    create_table :tuples do |t|
      t.references :relation, foreign_key: true

      t.timestamps
    end
  end
end
