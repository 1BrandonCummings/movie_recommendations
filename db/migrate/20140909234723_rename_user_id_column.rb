class RenameUserIdColumn < ActiveRecord::Migration
  def change

  	rename_column :recommendations, :user_id_id, :user_id

  end
end
