class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :event_name
      t.boolean :is_featured
      t.timestamp :start_time
      t.timestamp :end_time
      t.string :cover
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end
