class AddPublishedToPost < ActiveRecord::Migration
  def change
    add_column :posts, :published, :boolean
    add_index :posts, :published
  end
end
