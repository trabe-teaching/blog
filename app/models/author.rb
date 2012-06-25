class Author < ActiveRecord::Base
  has_many :posts
  attr_accessible :name
  validates :name, :presence => true
end
