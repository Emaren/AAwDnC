class AddReleasedAtToProduct < ActiveRecord::Migration
  def change
    add_column :products, :released_at, :datetime
    add_reference :products, :product, index: true, foreign_key: true
  end
end
