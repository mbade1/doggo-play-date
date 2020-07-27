class CreateParks < ActiveRecord::Migration[6.0]
  def change
    create_table :parks do |t|
      t.string :location
      t.string :hound
      t.string :description
      t.belongs_to :user
      t.belongs_to :playdate

      t.timestamps
    end
  end
end
