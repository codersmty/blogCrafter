class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.references :user, foreign_key: true
      t.string :titile
      t.text :content
      t.date :published

      t.timestamps
    end
  end
end
