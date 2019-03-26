class CreateCharities < ActiveRecord::Migration[5.2]
  def change
    create_table :charities do |t|
      t.text :name
      t.text :description
      t.integer :donation_id
      t.integer :age

      t.timestamps
    end
  end
end
