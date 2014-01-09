class AddColumnsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :name, :string
    add_column :books, :description, :text
    add_column :books, :rank, :integer
  end
end
