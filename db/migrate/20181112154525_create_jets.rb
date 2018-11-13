class CreateJets < ActiveRecord::Migration[5.2]
  def change
    create_table :jets do |t|
      t.string :name
      t.string :model
      t.string :city
      t.integer :price_hour
      t.integer :seats

      t.timestamps
    end
  end
end
