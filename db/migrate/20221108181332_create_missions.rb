class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.integer :planet_id
      t.integer :scientist_id
      t.string :name

      t.timestamps
    end
  end
end
