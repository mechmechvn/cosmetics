class BestSellers < ActiveRecord::Migration[5.1]
  def change
    create_table :best_sellers do |t|
      t.integer :product_id
      t.integer :category_id

      t.timestamps
    end
  end
end
