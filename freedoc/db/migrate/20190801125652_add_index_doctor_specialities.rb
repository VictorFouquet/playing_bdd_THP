class AddIndexDoctorSpecialities < ActiveRecord::Migration[5.2]
  def change
  	add_reference :speciality_doctors, :doctor, foreign_key: true
  	add_reference :speciality_doctors, :speciality, foreign_key: true
  endrai
end
