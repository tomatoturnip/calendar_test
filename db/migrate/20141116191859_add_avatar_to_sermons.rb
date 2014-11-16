class AddAvatarToSermons < ActiveRecord::Migration
  def change
    add_column :sermons, :avatar, :string
  end
end
