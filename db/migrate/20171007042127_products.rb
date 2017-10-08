class Products < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :brand_id
      t.integer :category_id
      t.text :description
      t.decimal :price
      t.decimal :sale_price

      t.timestamps
    end
  end
end
