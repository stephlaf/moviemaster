class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.references :level, foreign_key: true
      t.string :video
      t.string :description
      t.string :title
      t.string :IMDB
      t.string :movie_guide

      t.timestamps
    end
  end
end
