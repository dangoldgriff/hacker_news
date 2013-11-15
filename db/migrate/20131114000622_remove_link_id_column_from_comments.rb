class RemoveLinkIdColumnFromComments < ActiveRecord::Migration
  def change
  	remove_column :comments, :link_id, :string
  end
end
