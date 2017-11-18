class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.string :date
      t.string :location
      t.string :price
      t.string :notes
      t.references :client
      t.timestamps
    end
  end
end
