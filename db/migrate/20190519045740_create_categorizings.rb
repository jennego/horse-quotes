class CreateCategorizings < ActiveRecord::Migration[5.2]
  def change
    create_table :categorizings do |t|
      t.references :quote, foreign_key: true, index: true
      t.references :category, foreign_key: true, index: true
      t.timestamps
    end
  end
end
