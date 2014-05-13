class CreateExpeditions < ActiveRecord::Migration
  def change
    create_table :expeditions do |t|
      t.string :grid
      t.string :call
      t.date :start_date
      t.date :end_date
      t.string :qsl_info
      t.text :more_info

      t.timestamps
    end
  end
end
