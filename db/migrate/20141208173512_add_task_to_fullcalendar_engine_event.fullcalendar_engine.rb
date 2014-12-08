# This migration comes from fullcalendar_engine (originally 20141205170738)
class AddTaskToFullcalendarEngineEvent < ActiveRecord::Migration
  def change
    add_column :fullcalendar_engine_events, :task, :string
  end
end
