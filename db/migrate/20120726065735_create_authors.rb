# encoding: utf-8
class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.timestamps
    end

    add_index :authors, :name

    add_column :posts, :author_id, :integer
    add_index :posts, :author_id

    Post.reset_column_information

    author = Author.create(:name => 'David')
    Post.all.each { |p| p.update_attribute(:author, author) }

    Author.create(:name => 'Asís')
  end
end
