class CreateKatals < ActiveRecord::Migration[6.1]
  def change
    create_table :katals do |t|
      t.string :name
      t.integer :locationId
      t.integer :leavepantouId
      t.integer :userId
      t.string :description

      t.timestamps
    end
  end
end
