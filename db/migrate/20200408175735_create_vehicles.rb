class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :vin
      t.float :grade
      t.integer :stocknumber
      t.string :make
      t.string :model
      t.string :series
      t.integer :year
      t.float :price
      t.string :body
      t.integer :cylinders
      t.float :displacement
      t.string :exterior
      t.string :interior
      t.float :mileage
      t.string :transmission
      t.string :upholstery
      t.date :enddate
      t.string :abglocation
      t.date :buydate
      t.string :buyername
      t.string :watchedby
      t.string :dealershipname
      t.string :drive_train
      t.text :condition_report
      t.string :sales_rep

      t.timestamps
    end
  end
end
