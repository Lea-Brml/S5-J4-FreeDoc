class Specialty < ApplicationRecord
  has_many :SpecialityDoctors
  has_many :doctors, through: :SpecialityDoctors

end
