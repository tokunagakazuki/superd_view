class AddIndexToPosts < ActiveRecord::Migration[5.1]
  def change
    add_index :posts, :title, length: 32
    add_index :posts, :description, length: 32
  end
end
