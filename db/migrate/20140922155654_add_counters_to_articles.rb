class AddCountersToArticles < ActiveRecord::Migration
  def change

  	add_column :articles, :likes_count, :integer
  	add_column :articles, :comments_count, :integer
  	add_column :articles, :is_featured, :boolean, default: false


  end
end
