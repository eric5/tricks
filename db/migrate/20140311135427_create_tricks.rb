class CreateTricks < ActiveRecord::Migration
  def change
    create_table :tricks do |t|
      t.integer :user_id
      t.string :title
      t.text :content
      t.timestamps
    end

    add_index :tricks, :user_id
  end
end
