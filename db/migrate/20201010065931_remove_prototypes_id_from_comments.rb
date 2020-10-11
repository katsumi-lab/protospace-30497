class RemovePrototypesIdFromComments < ActiveRecord::Migration[6.0]
  def change
    remove_column :comments, :prototypes_id, :integer
  end
end
