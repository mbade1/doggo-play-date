class CreatePlaydates < ActiveRecord::Migration[6.0]
  def change
    create_table :playdates do |t|
      t.datetime :date
      t.datetime :time
      t.belongs_to :park
      t.belongs_to :user

      t.timestamps
    end
  end
end
