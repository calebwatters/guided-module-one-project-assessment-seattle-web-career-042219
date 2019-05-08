class DeleteColumnNicknameFromCharacters < ActiveRecord::Migration[5.2]
  def change
    remove_column :characters, :nickname
  end
end
