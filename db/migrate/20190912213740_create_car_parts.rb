class CreateCarParts < ActiveRecord::Migration[5.2]
  def change
    create_table :car_parts do |t|

      t.timestamps
    end
  end
end
