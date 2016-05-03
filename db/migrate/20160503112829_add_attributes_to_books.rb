class AddAttributesToBooks < ActiveRecord::Migration
  def change
  	add_column :books, :volume, :string 
  	add_column :books, :series, :string
  	add_column :books, :address, :string
  	add_column :books, :edition, :string
  	add_column :books, :month, :string
  	add_column :books, :note, :string
  	add_column :books, :bkey, :string
  end
end
