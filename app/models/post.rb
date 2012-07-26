class Post < ActiveRecord::Base
  has_many :comments

  attr_accessible :content, :title, :published

  validates :title, :content, :presence => true

  scope :published, where(:published => true)
  scope :draft, where(:published => false)

  def self.by_date(year = nil, month = nil, day = nil)
    where('posts.created_at like ?', "#{year || '%'}-#{month || '%'}-#{day || '%'} %:%:%")
  end
end
