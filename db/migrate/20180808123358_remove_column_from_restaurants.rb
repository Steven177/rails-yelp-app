class RemoveColumnFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :reviews, :string
  end
end
