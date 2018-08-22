class AddTitleToLens < ActiveRecord::Migration[5.2]
  def change
    add_column :lenses, :title, :string
  end
end
