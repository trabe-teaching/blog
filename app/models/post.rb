class Post < ActiveRecord::Base
  belongs_to :author
  has_many :comments

  attr_accessible :content, :title, :published, :author_id

  validates :title, :content, :presence => true

  scope :published, where(:published => true)
  scope :draft, where(:published => false)
end
