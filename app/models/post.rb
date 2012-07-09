class Post < ActiveRecord::Base
  paginates_per 2
  has_many :comments

  attr_accessible :content, :title, :published

  validates :title, :content, :presence => true

  scope :published, where(:published => true)
  scope :draft, where(:published => false)
end
