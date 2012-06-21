class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :author

  attr_accessible :content, :title, :published

  validates :title, :content, :presence => true

  scope :published, where(:published => true)
  scope :draft, where(:published => false)
end
