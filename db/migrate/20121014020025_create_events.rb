class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.string :year
      t.string :venue
      t.text :description
      t.boolean :workshop, default: false
      t.boolean :session, default: false
      
      t.timestamps
    end
  end
end
