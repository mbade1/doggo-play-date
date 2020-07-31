class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :comment
      t.integer :park_id
      t.integer :user_id
      t.integer :park_review

      t.timestamps
    end
  end
end
