class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :image
      t.references :user, foregin_key: true
      t.references :item, foregin_key: true
      t.timestamps
    end
  end
end
