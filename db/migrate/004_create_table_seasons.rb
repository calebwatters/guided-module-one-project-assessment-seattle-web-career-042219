class CreateTableSeasons< ActiveRecord::Migration[5.2]
    def change
        create_table :seasons do |t|
        t.integer :character_id
        end
    end
end