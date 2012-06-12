class Comment < ActiveRecord::Base
  belongs_to :post

  attr_accessible :author, :content

  validates :author, :content, :presence => true
end
