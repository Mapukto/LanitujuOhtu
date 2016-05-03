class AddAttributesToArticle < ActiveRecord::Migration
  def change
  	add_column :articles, :volume, :string 
  	add_column :articles, :number, :string
  	add_column :articles, :pages, :string
  	add_column :articles, :month, :string
  	add_column :articles, :note, :string
  	add_column :articles, :akey, :string
  end
end
