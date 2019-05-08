class DeleteColumnHousesLocation < ActiveRecord::Migration[5.2]
  def change
      remove_column :houses, :location
  end
end
