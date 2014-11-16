class CreateSermons < ActiveRecord::Migration
  def change
    create_table :sermons do |t|
      t.string :speaker, null: false
      t.text :subject, null: false
      t.date :day, null: false

      t.timestamps
    end
  end
end
