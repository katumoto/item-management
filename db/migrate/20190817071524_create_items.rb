class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.references :sub, foregin_key: true
      t.string :name
      t.text :characteristics
      t.references :user, foregin_key: true, null: false
      t.timestamps
    end
  end
end
