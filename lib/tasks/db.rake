namespace :db do
  task insert: :environment do
    require 'csv'

    csv_file = Rails.root.join('db', 'technicians.csv').to_s
    table = CSV.parse(File.read(csv_file), headers: true)
    table.each do |row|
      Technician.first_or_create(name: row['name'])
    end

    csv_file = Rails.root.join('db', 'locations.csv').to_s
    table = CSV.parse(File.read(csv_file), headers: true)
    table.each do |row|
      Location.first_or_create(name: row['name'], city: row['city'])
    end

    csv_file = Rails.root.join('db', 'work_orders.csv').to_s
    table = CSV.parse(File.read(csv_file), headers: true)
    table.each do |row|
      WorkOrder.first_or_create(
          technician_id: row['technician_id'],
          location_id:   row['location_id'],
          time:          Time.parse(row['time']),
          duration:      row['duration'].to_i,
          price:         row['price'].to_f
      )
    end
  end
end