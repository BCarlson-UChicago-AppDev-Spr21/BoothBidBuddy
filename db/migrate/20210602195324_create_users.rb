class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.integer :graduation_year
      t.integer :bid_wealth
      t.integer :backpacked_courses_count
      t.integer :course_comments_count

      t.timestamps
    end
  end
end
