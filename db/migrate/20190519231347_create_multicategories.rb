class CreateMulticategories < ActiveRecord::Migration[5.2]
  def change
    create_table :multicategories do |t|
      t.references :category, foreign_key: true, index: true
      t.references :quote, foreign_key: true, index: true
      t.timestamps
    end
  end
end
