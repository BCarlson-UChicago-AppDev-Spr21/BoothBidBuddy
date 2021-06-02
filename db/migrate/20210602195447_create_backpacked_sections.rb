class CreateBackpackedSections < ActiveRecord::Migration[6.0]
  def change
    create_table :backpacked_sections do |t|
      t.integer :user_id
      t.integer :planned_bid
      t.integer :section_id

      t.timestamps
    end
  end
end
