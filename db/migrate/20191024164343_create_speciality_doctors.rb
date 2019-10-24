class CreateSpecialityDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :speciality_doctors do |t|
      t.references :doctor, index: true
      t.references :speciality, index: true

      t.timestamps
    end
  end
end
