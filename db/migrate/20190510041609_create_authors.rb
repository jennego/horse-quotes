class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :author_first
      t.string :author_last 
      t.timestamps
    end
  end
end
