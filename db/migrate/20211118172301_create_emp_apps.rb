class CreateEmpApps < ActiveRecord::Migration[6.1]
  def change
    create_table :emp_apps do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :designation

      t.timestamps
    end
  end
end
