class AddClientIdToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :client, index: true, foreign_key: true
  end
end
