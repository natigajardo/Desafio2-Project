class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.datetime :begin
      t.datetime :end
      t.integer :state, default: 0 #0 = Propuesta, 1 = en progreso, 2 = terminado

      t.timestamps
    end
  end
end
