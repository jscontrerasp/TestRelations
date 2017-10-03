class CreateEventTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :event_types do |t|
      t.references :event, foreign_key: true
      t.string :tipo

      t.timestamps
    end
  end
end
