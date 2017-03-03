class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
<<<<<<< HEAD
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :goal_id, index: true
=======
      t.string :firstname
      t.string :lastname
      

>>>>>>> b5fd48f7cd6132efe782bf12663eb118c52def06
      t.timestamps
    end
  end
end
