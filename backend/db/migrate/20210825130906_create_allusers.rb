class CreateAllusers < ActiveRecord::Migration[6.1]
  def change
    create_table :allusers do |t|
      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :password_digest
      t.string :salt
      t.text :personaldetails
      t.text :homes

      t.timestamps
    end
  end
end
