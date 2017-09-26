class AddImageToLipsticks < ActiveRecord::Migration[5.1]
  def change
    add_column :lipsticks, :image, :string
  end
end
