class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :headline
      t.text :story
      t.integer :user_id
      t.string :category

      t.timestamps
    end
  end
end
