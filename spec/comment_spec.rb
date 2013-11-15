require 'spec_helper'

describe Comment do

  it { should validate_presence_of :commentable_type }
  it { should validate_presence_of :commentable_id }
  it { should validate_presence_of :comment_text }
  it { should belong_to :user }
  it { should belong_to :commentable }
  it { should have_many :comments }

end