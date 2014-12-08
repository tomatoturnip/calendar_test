# This migration comes from fullcalendar_engine (originally 20141205213921)
class AddColorToFullcalendarEngineEvent < ActiveRecord::Migration
  def change
    add_column :fullcalendar_engine_events, :color, :string
  end
end
