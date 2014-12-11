class CreateRepos < ActiveRecord::Migration
  def change
    create_table :repos do |t|
      t.string :name, null: false
      t.string :full_name, null: false
      t.string :rid, null: false
      t.string :url, null: false

      t.timestamps
    end
  end
end
