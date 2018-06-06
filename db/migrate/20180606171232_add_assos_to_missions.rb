class AddAssosToMissions < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :missions, :assos
  end
end
