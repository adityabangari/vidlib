class CreateVideoModels < ActiveRecord::Migration[5.1]
  def change
    create_table :video_models do |t|
      t.boolean :adult
      t.string :backdrop_path
      t.string :belongs_to_collection
      t.integer :budget
      t.string :homepage
      t.string :imdb_id
      t.string :original_language
      t.string :original_title
      t.string :overview
      t.float :popularity
      t.string :poster_path
      t.string :release_date
      t.integer :revenue
      t.integer :runtime
      t.string :status
      t.string :tagline
      t.boolean :video
      t.float :vote_average
      t.integer :vote_count

      t.timestamps
    end
  end
end
