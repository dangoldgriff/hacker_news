class Comment < ActiveRecord::Base

  validates :commentable_type, presence: true
  validates :commentable_id, presence: true
  validates :comment_text, presence: true
  
  belongs_to :commentable, polymorphic: true
  belongs_to :user

  has_many :comments, as: :commentable
end
