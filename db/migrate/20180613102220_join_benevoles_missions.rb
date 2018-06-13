class JoinBenevolesMissions < ActiveRecord::Migration[5.2]
  def change
    create_join_table :benevoles, :missions do |t|
      t.index :benevole_id
      t.index :mission_id
  end
end
end
