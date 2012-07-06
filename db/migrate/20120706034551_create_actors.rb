class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.string :picture_thumb

      t.timestamps
    end
  end
end
