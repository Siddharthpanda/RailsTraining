class RemoveSubjctIdFromPages < ActiveRecord::Migration[5.0]
  def change
    remove_column :pages, :subjct_id, :integer
  end
end
