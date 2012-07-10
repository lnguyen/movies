class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.datetime :release
      t.string :production_company
      t.string :image

      t.timestamps
    end
  end
end
