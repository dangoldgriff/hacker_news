require 'spec_helper'

  describe User do
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
    it { should have_many :links }
    it { should have_many :comments}
    it { should have_many :votes }
end