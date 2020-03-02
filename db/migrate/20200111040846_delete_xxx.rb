class DeleteXxx < ActiveRecord::Migration[5.2]
  def change
    remove_column :hotels, :prefecture_id, :integer
  end
end
