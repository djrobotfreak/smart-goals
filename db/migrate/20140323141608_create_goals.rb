class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.integer :user_id
      t.string :S
      t.string :M
      t.string :A
      t.string :R
      t.string :T

      t.timestamps
    end
  end
end
