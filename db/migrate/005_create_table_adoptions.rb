class CreateTableAdoptions < ActiveRecord::Migration[5.2]
    def change
         create_table :adoptions do |t|
            t.integer :user_id
            t.integer :character_id
        end
    end
end