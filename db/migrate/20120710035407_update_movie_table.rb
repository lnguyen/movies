class UpdateMovieTable < ActiveRecord::Migration
  def up
  	add_column :movies, :description, :text
  	add_column :movies, :approved, :boolean
  end

  def down
  end
end
