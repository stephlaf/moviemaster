class CreateLenses < ActiveRecord::Migration[5.2]
  def change
    create_table :lenses do |t|
      t.references :level, foreign_key: true
      t.string :video
      t.string :description

      t.timestamps
    end
  end
end
