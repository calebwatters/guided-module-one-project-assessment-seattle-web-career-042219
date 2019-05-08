class DeleteTableSeasons < ActiveRecord::Migration[5.2]
    def change 
        drop_table :seasons
    end
end