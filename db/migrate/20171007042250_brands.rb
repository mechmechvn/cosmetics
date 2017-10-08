class Brands < ActiveRecord::Migration[5.1]
  def change
    create_table :brands do |t|
      t.string :name
      t.integer :country_id
      t.text :description

      t.timestamps
    end
  end
end
