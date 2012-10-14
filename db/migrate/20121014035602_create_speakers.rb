class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name
      t.text :bio
      t.string :image
      t.string :year
      t.boolean :keynote, default: false
      t.references :event

      t.timestamps
    end
  end
end
