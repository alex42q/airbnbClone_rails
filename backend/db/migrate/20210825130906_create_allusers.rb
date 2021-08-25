class CreateAllusers < ActiveRecord::Migration[6.1]
  def change
    create_table :allusers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password
      t.string :salt
      t.text :personaldetails
      t.text :homes

      t.timestamps
    end
  end
end
