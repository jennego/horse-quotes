class Addrefs < ActiveRecord::Migration[5.2]
  def change
        add_reference :quotes, :author, foreign_key: true, index: true
        add_reference :categories, :quote, foreign_key: true, index: true
  end
end
