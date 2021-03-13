class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :retail_price
      t.integer :quantity
      t.integer :wholesale_price

      t.timestamps
    end
  end
end
