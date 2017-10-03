class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :nameEvent
      t.string :place

      t.timestamps
    end
  end
end
