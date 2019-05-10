class RenameColumnInCharacters < ActiveRecord::Migration[5.2]
    def change
        rename_column :characters, :house_id, :house
    end
end