class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :year
      t.string :poster
      t.integer :runtime
      # //createmovie is a class
      t.timestamps
    end
  end
end
