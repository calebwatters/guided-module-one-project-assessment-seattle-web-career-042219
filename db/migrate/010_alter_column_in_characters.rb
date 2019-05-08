class AlterColumnInCharacters < ActiveRecord::Migration[5.2]
    def change
        change_column :characters, :house_id, :string
    end
end