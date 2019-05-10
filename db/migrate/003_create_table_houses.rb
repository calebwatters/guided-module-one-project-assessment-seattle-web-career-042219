class CreateTableHouses < ActiveRecord::Migration[5.2]
    def change
        create_table :houses do |t|
            t.string :name
            t.string :location
        end
    end
end