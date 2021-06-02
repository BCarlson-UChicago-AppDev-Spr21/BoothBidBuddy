class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.text :comment
      t.integer :course_id
      t.integer :professor_id

      t.timestamps
    end
  end
end
