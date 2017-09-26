class CreateLipsticks < ActiveRecord::Migration[5.1]
  def change
    create_table :lipsticks do |t|
      t.string :name
      t.string :brand
      t.boolean :is_best_seller
      t.text :description
      t.decimal :price
      t.string :picture

      t.timestamps
    end
  end
end
