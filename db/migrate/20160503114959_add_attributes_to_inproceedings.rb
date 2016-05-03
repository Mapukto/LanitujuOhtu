class AddAttributesToInproceedings < ActiveRecord::Migration
  def change
  	add_column :inproceedings, :editor, :string 
  	add_column :inproceedings, :pages, :string
  	add_column :inproceedings, :organization, :string
  	add_column :inproceedings, :publisher, :string
  	add_column :inproceedings, :address, :string
  	add_column :inproceedings, :month, :string
  	add_column :inproceedings, :note, :string
  	add_column :inproceedings, :ikey, :string
  end
end
