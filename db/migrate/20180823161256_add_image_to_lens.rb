class AddImageToLens < ActiveRecord::Migration[5.2]
  def change
    add_column :lenses, :image, :string
  end
end
