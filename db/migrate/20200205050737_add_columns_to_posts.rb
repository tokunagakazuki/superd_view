class AddColumnsToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :latitude, :float
    add_column :posts, :longitude, :float
  end
end
