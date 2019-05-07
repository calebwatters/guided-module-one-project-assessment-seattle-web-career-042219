class CreateTableCharacters < ActiveRecord::Migration[5.2]
    def change 
        create_table :characters do |t|
            t.string :name
            t.string :gender
            t.string :breed
            t.string :nickname
            t.integer :house_id
            t.integer :popularity
        end
    end
end