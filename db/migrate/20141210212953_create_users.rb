class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :email, null: false
      t.string :uid, null: false
      t.string :name
      t.string :avatar
      t.string :provider, null: false

      t.boolean :synced, default: false

      t.timestamps
    end
  end
end
