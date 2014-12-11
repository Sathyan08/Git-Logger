class CreateRepoListings < ActiveRecord::Migration
  def change
    create_table :repo_listings do |t|
      t.integer :user_id, null: false
      t.integer :repo_id, null: false

      t.timestamps
    end
  end
end
