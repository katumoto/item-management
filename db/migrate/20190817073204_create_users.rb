class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :gender
      t.date :birthday
      t.text :address
      t.string :job
      t.references :item, foregin_key: true
      t.timestamps
    end
  end
end
