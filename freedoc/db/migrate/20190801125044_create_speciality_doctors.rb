class CreateSpecialityDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :speciality_doctors do |t|

      t.timestamps
    end
  end
end
