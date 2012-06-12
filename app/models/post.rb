class Post < ActiveRecord::Base
  has_many :comments

  attr_accessible :content, :title

  validates :title, :content, :presence => true
end
