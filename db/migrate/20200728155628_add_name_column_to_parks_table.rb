class AddNameColumnToParksTable < ActiveRecord::Migration[6.0]
  def change
    add_column :parks, :name, :string
  end
end
