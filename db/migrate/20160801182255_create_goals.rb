class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
<<<<<<< HEAD
      t.belongs_to :user, index: true
      t.string :name
      t.text :description
      t.integer :user_id
=======
      t.string :name
      t.integer :progress
>>>>>>> b5fd48f7cd6132efe782bf12663eb118c52def06

      t.timestamps
    end
  end
end
