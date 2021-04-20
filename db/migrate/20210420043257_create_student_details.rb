class CreateStudentDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :student_details do |t|
      t.string :student_name
      t.integer :roll_no
      t.string :gender
      t.text :address
      t.string :university_name
      t.timestamps
    end
  end
end
