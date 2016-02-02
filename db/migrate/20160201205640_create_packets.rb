class CreatePackets < ActiveRecord::Migration
  def change
    create_table :packets do |t|
      t.references :category, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
