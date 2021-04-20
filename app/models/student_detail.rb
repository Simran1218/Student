class StudentDetail < ApplicationRecord
  validates :student_name, presence: true
  validates :roll_no, presence: true
end
