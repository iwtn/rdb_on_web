class CreateValues < ActiveRecord::Migration[5.2]
  def change
    create_table :values do |t|
      t.references :attribute, foreign_key: true
      t.references :tuple, foreign_key: true
      t.string :val

      t.timestamps
    end
  end
end
