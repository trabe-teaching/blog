class Comment < ActiveRecord::Base
  belongs_to :post

  attr_accessible :author, :content
end
