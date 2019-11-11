class InitDatabase < ActiveRecord::Migration[5.0]
  def self.up
    create_table :technicians do |t|
      t.string :name
    end

    create_table :locations do |t|
      t.string :name
      t.string :city
    end

    create_table :work_orders do |t|
      t.integer  :technician_id
      t.integer  :location_id
      t.datetime :time
      t.integer  :duration
      t.float    :price
    end
  end

  def self.down
    drop_table :technicians
    drop_table :locations
    drop_table :work_orders
  end
end