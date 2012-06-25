class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :author

  attr_accessible :content, :title, :published, :author_id

  validates :title, :content, :author_id, :presence => true

  scope :published, where(:published => true)
  scope :draft, where(:published => false)
end
