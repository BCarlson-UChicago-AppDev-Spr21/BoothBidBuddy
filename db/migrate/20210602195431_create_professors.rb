class CreateProfessors < ActiveRecord::Migration[6.0]
  def change
    create_table :professors do |t|
      t.string :name
      t.integer :sections_count

      t.timestamps
    end
  end
end
